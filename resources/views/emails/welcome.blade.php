@component('mail::message')

Chào mừng {{ $name }} đến với Laravel Ecommerce<br>
BlogIt là môi trường để mọi người cùng chia sẻ, học hỏi, trao đổi kiến thức, việc chia sẻ các tài liệu, kiến thức về giáo dục sẽ luôn có tính lan truyền cao đễ dàng tiếp cận với nhiều người dùng.
- Dành cho tất cả mọi người, gồm nhiều mảng đặc biệt là về mảng công nghệ thông tin.
- Những người mong muốn chia sẻ kiến thức của bản thân bằng cách viết các tài liệu chia sẻ trên blog, bên cạnh đó khi có bất cứ nhưng khúc mắc gì đều có thể đăng tải các câu hỏi, đưa ra vân đề cần giải quyết để mọi người cùng trao đổi, bình luận.
- Đặt yếu tố người dùng lên hàng đầu, giúp người dùng tổ chức dữ liệu một cách rõ ràng, review người dùng một cách tổng quan nhất, kết nối người dụng lại với nhau, gợi ý người dùng một cách tối đa.

@component('mail::button', ['url' => route('login'), 'color' => 'green'])
Đăng nhập
@endcomponent

Thank you again for choosing us.

Regards,<br>
{{ config('app.name') }}
@endcomponent
