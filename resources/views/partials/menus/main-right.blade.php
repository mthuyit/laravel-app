<ul>
    @guest
    <li><a href="{{ route('register') }}">{{ __('auth.register') }}</a></li>
    <li><a href="{{ route('login') }}">{{ __('auth.login') }}</a></li>
    @else

    <!-- <notification :userid="{{auth()->id()}}" :unreads="{{auth()->user()->unreadNotifications}}"></notification> -->

    <li class="dropdown notifications-dropdown">
        <a href="javascript:void(0)" class="dropdown-toggle" id="navbarNotification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-bell-o"></i> {{ __('auth.notification') }} 
            <span id="MessageCountUnRead">{{ auth()->user()->unreadNotifications->count() }}</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarNotification">
            <div class="dropdown-menu-header">
                {{ __('auth.notification_message') }}
                <a class="pull-right" href="{{ route('ajax.notification') }}"> {{ __('auth.notification_mark_read') }}</a>
            </div>
            @foreach (auth()->user()->unreadNotifications as $notification)
            <div class="dropdown-item {{  $notification->read_at ? 'read' : 'not-read' }}">
                <a href="{{  $notification->data['url'] ? $notification->data['url'] : 'javascript:void(0)' }}">
                    <h4>{{ $notification->data['title'] }}</h4>
                    {{ $notification->data['description'] }}<br>
                    <small>{{ $notification->created_at->diffForHumans() }}</small>
                </a>
            </div>
            @endforeach

            @if(auth()->user()->unreadNotifications->count() == 0)
                <div class="dropdown-item">
                    {{ __('auth.notification_null') }}
                </div>
            @endif

            <div class="notifications-dropdown-footer">
                <a href="{{ route('users.edit') }}">{{ __('auth.notification_all') }}</a>
            </div>
        </div>
    </li>
    <li>
        <a href="{{ route('users.edit') }}">{{ auth()->user()->name }}</a>
    </li>
    <li>
        <a href="{{ route('logout') }}"
            onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();">
            {{ __('auth.logout') }}
        </a>
    </li>

    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
        {{ csrf_field() }}
    </form>
    @endguest
    <li>
        <a class="{{ app()->getLocale() == 'en' ? 'active' : '' }}" href="{{ route('setlocale', ['locale' => 'en']) }}">
            <img src="{{ asset('img/flags/en.png') }}" title="English" width="16" alt="English"> <span>English</span>
        </a>
        <a class="{{ app()->getLocale() == 'vi' ? 'active' : '' }}" href="{{ route('setlocale', ['locale' => 'vi']) }}">
            <img src="{{ asset('img/flags/vn.png') }}" title="Tiếng Việt" width="16" alt="Tiếng Việt"> <span>Tiếng Việt</span>
        </a>
    </li>
                                
</ul>
