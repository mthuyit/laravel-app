<ul>
    @foreach($items as $v)
        <li><a href="{{ $v->link() }}">{{ $v->getTranslatedAttribute('title') }}</a></li>
    @endforeach
</ul>
