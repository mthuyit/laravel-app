@if (! empty($breadcrumbs))
<!-- breadcrumb area start -->
<div class="breadcrumb-area mt-20">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb-wrap">
                    <nav aria-label="breadcrumb">
                        <ul class="breadcrumb" itemscope itemtype="https://schema.org/BreadcrumbList">
                            <li class="breadcrumb-item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                                <a itemprop="item" href="{{ route('home') }}">
                                    <span itemprop="name">{{ __('generic.home') }}</span></a>
                                <meta itemprop="position" content="1" />
                            </li>

                            @foreach ($breadcrumbs as $label => $link)
                            
                                @if (is_int($label) && ! is_int($link))
                                <li class="breadcrumb-item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                                    <h1 itemprop="name" class="active">{{ $link }}</h1>
                                    <meta itemprop="position" content="{{ $loop->index + 2 }}" />
                                </li>

                                @elseif($link)
                                <li class="breadcrumb-item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                                    <a itemscope itemtype="https://schema.org/WebPage" itemprop="item" itemid="{{ $link }}" href="{{ $link }}">
                                        <span itemprop="name">{{ $label }}</span>
                                    </a>
                                    <meta itemprop="position" content="{{ $loop->index + 2 }}" />
                                </li>
                                @endif

                            @endforeach
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb area end -->

@endif