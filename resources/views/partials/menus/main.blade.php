@php 
    $product_lists = App\Models\ProductList::select('slug', 'title', 'id')->where('active', true)->get();
@endphp
<ul>
    @foreach($items as $menu_item)
        <li class="{{ setActiveMenu($menu_item->link()) }}">
            <a href="{{ $menu_item->link() }}"> 
                {{ $menu_item->getTranslatedAttribute('title') }}
                @if ($menu_item->link() === 'product')
                    <i class="fa fa-angle-down"></i>
                @endif
            </a>

            @if ($menu_item->link() === 'product')
            <ul class="dropdown">
                @foreach (translateContentRecursive($product_lists) as $list)  
                @php 
                    $product_cats = App\Models\ProductCat::select('slug', 'title', 'id')->where('active',true)->where('id_list', $list->id)->get();
                    $issetcat = count($product_cats) > 0;
                @endphp
                    <li>
                        <a href="{{ route('product.list', $list->slug) }}">{{ $list->title }}
                            @if($issetcat) <i class="fa fa-angle-right"></i> @endif
                        </a>
                    @if($issetcat)
                    
                    <ul class="dropdown">  
                        @foreach (translateContentRecursive($product_cats) as $cat)
                        @php 
                            $product_items = App\Models\ProductItem::select('slug', 'title', 'id')->where('active',true)->where('id_cat', $cat->id)->get();
                            $issetitem = count($product_items) > 0;
                        @endphp
                        <li>
                            <a href="{{ route('product.cat', ['list' => $list->slug, 'cat' => $cat->slug]) }}">{{ $cat->title }}
                            @if($issetitem) <i class="fa fa-angle-right"></i> @endif
                            </a>
                            @if($issetitem)
                                <ul class="dropdown">
                                @foreach (translateContentRecursive($product_items) as $item)
                                    <li><a href="{{ route('product.item', ['list' => $list->slug, 'cat' => $cat->slug, 'item' => $item->slug]) }}">{{ $item->title }}</a></li>
                                @endforeach
                                </ul>
                            @endif
                        </li>
                        @endforeach
                    </ul>
                    @endif
                    </li>
                @endforeach
            </ul>
            @endif
            
        </li>
    @endforeach
</ul>
