<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted'             => 'Giá trị :attribute phải được chấp nhận.',
    'active_url'           => 'Giá trị :attribute không phải là một URL hợp lệ.',
    'after'                => 'Giá trị :attribute phải là một ngày sau :date.',
    'after_or_equal'       => 'Giá trị :attribute phải là một ngày sau hoặc bằng :date.',
    'alpha'                => 'Giá trị :attribute chỉ có thể chứa các chữ cái.',
    'alpha_dash'           => 'Giá trị :attribute chỉ có thể chứa các chữ cái, số, và dấu gạch ngang.',
    'alpha_num'            => 'Giá trị :attribute chỉ có thể chứa các chữ cái và số.',
    'array'                => 'Giá trị :attribute phải là một mảng.',
    'before'               => 'Giá trị :attribute phải là một ngày trước :date.',
    'before_or_equal'      => 'Giá trị :attribute phải là một ngày trước hoặc bằng :date.',
    'between'              => [
        'numeric' => 'Giá trị :attribute phải ở giữa :min và :max.',
        'file'    => 'Giá trị :attribute phải ở giữa :min và :max kilobytes.',
        'string'  => 'Giá trị :attribute phải ở giữa :min và :max ký tự.',
        'array'   => 'Giá trị :attribute phải ở giữa :min và :max items.',
    ],
    'boolean'              => 'Giá trị :attribute phải là true or false.',
    'confirmed'            => 'Giá trị :attribute xác nhận không phù hợp.',
    'date'                 => 'Giá trị :attribute không phải là ngày hợp lệ.',
    'date_format'          => 'Giá trị :attribute không trùng khớp với định dạng :format.',
    'different'            => 'Giá trị :attribute và :other phải khác nhau.',
    'digits'               => 'Giá trị :attribute phải là :digits chữ số.',
    'digits_between'       => 'Giá trị :attribute phải ở giữa :min và :max chữ số.',
    'dimensions'           => 'Giá trị :attribute có kích thước hình ảnh không hợp lệ.',
    'distinct'             => 'Giá trị :attribute trường có giá trị trùng lặp.',
    'email'                => 'Giá trị :attribute phải là một địa chỉ email hợp lệ.',
    'exists'               => 'Phần được chọn :attribute không hợp lệ.',
    'file'                 => 'Giá trị :attribute phải là file.',
    'filled'               => 'Giá trị :attribute trường phải có một giá trị.',
    'image'                => 'Giá trị :attribute phải là hình.',
    'in'                   => 'Phần được chọn :attribute không hợp lệ.',
    'in_array'             => 'Giá trị :attribute trường không tồn tại trong :other.',
    'integer'              => 'Giá trị :attribute phải là an integer.',
    'ip'                   => 'Giá trị :attribute phải là một hợp lệ IP address.',
    'ipv4'                 => 'Giá trị :attribute phải là một hợp lệ IPv4 address.',
    'ipv6'                 => 'Giá trị :attribute phải là một hợp lệ IPv6 address.',
    'json'                 => 'Giá trị :attribute phải là một hợp lệ JSON string.',
    'max'                  => [
        'numeric' => 'Giá trị :attribute có thể không lớn hơn :max.',
        'file'    => 'Giá trị :attribute có thể không lớn hơn :max kilobytes.',
        'string'  => 'Giá trị :attribute có thể không lớn hơn :max ký tự.',
        'array'   => 'Giá trị :attribute có thể không có nhiều hơn :max items.',
    ],
    'mimes'                => 'Giá trị :attribute phải là một loại tệp: :values.',
    'mimetypes'            => 'Giá trị :attribute phải là một loại tệp: :values.',
    'min'                  => [
        'numeric' => 'Giá trị :attribute phải ít nhất là :min.',
        'file'    => 'Giá trị :attribute phải ít nhất là :min kilobytes.',
        'string'  => 'Giá trị :attribute phải ít nhất là :min ký tự.',
        'array'   => 'Giá trị :attribute phải ít nhất là :min items.',
    ],
    'not_in'               => 'Phần được chọn :attribute không hợp lệ.',
    'numeric'              => 'Giá trị :attribute phải là số.',
    'present'              => 'Giá trị :attribute phải là hiện tại.',
    'regex'                => 'Giá trị :attribute định dạng không hợp lệ.',
    'required'             => 'Giá trị :attribute trường bắt buộc.',
    'required_if'          => 'Giá trị :attribute trường bắt buộc khi :other là :value.',
    'required_unless'      => 'Giá trị :attribute trường bắt buộc unless :other là trong :values.',
    'required_with'        => 'Giá trị :attribute trường bắt buộc khi :values là hiện tại.',
    'required_with_all'    => 'Giá trị :attribute trường bắt buộc khi :values là hiện tại.',
    'required_without'     => 'Giá trị :attribute trường bắt buộc khi :values là không hiện tại.',
    'required_without_all' => 'Giá trị :attribute trường bắt buộc khi không có :values là hiện tại.',
    'same'                 => 'Giá trị :attribute và :other phải trùng khớp.',
    'size'                 => [
        'numeric' => 'Giá trị :attribute phải là :size.',
        'file'    => 'Giá trị :attribute phải là :size kilobytes.',
        'string'  => 'Giá trị :attribute phải là :size ký tự.',
        'array'   => 'Giá trị :attribute phải chứa :size items.',
    ],
    'string'               => 'Giá trị :attribute phải là một chuỗi.',
    'timezone'             => 'Giá trị :attribute phải là một hợp lệ zone.',
    'unique'               => 'Giá trị :attribute đã được thực hiện.',
    'uploaded'             => 'Giá trị :attribute không tải lên được.',
    'url'                  => 'Giá trị :attribute định dạng không hợp lệ.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap attribute place-holders
    | with something more reader friendly such as E-Mail Address instead
    | of "email". This simply helps us make messages a little cleaner.
    |
    */

    'attributes' => [],

];
