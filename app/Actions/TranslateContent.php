<?php

namespace App\Actions;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

class TranslateContent
{
    /**
     * @param  Collection|Model $data
     * @param  int|null         $level
     * @return void
     */
    public function handle($data, ?int $level = 0)
    {
        if ($data instanceof Collection) {
            $first = $data->first();
        } else {
            $first = $data;
        }

        if (
            !method_exists($first, 'getTranslatedAttribute')
            || !config('voyager.multilingual.enabled')
            || app()->getLocale() == config('voyager.multilingual.default')
        ) {
            return $data;
        }

        $data = $this->loadTranslations($data, $first, $level);

        if ($data instanceof Collection) {
            $data = $data->map(function($item) use ($level) {
                return $this->translate($item, $level);
            });
        } else {
            $data = $this->translate($data, $level);
        }

        return $data;
    }

    protected function translate(Model $data, $level)
    {
        foreach ($data->getTranslatableAttributes() as $attribute) {
            $data->{$attribute} = $data->getTranslatedAttribute($attribute) ?? $data->{$attribute};
        }

        if ($level > 0) {
            foreach ($data->getRelations() ?? [] as $name => $relation) {
                $level--;
                $data->{$name} = $this->handle($relation, $level);
            }
        }

        return $data;
    }

    protected function loadTranslations($data, Model $parent, int $level)
    {
        $relations[] = 'translations';

        // Check if there are relations that needs to be translated
        if ($level > 0) {
            foreach ($parent->getRelations() ?? [] as $name => $model) {
                if (! $model instanceof Model) {
                    $model = app(get_class($parent->{$name}()->getRelated()));
                }

                if (is_bread_translatable($model)) {
                    $relations[] = $name.'.translations';
                }
            }
        }

        $data->loadMissing($relations);

        return $data;
    }
}