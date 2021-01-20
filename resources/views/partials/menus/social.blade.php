@foreach($items as $v)
    <a href="{{ $v->link() }}" target="_blank" data-toggle="tooltip" data-placement="top" title="{{ $v->title }}">
        <i class="fa {{ $v->icon_class }}"></i>
    </a>
@endforeach

