<table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên</th>
                <th>Giá</th>
                <th>Created</th>
                <th>Updated</th>
            </tr>
        </thead>
        <tbody>
        @foreach($products as $product)
            <tr>
                <td>{{$product->id}}</td>
                <td>{{$product->title}}</td>
                <td>{{$product->price}}</td>
                <td>{{$product->created_at}}</td>
                <td>{{$product->updated_at}}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
