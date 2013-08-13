{include file="admin/std/sidebar/products.tpl"}
<div class="span9">
    <h1>Посты
        <a class="btn" href="/admin/posts/add/">Add</a>
    </h1>
    <hr>

    <div class="">
        <table class="table table-bordered" style="width: 600px;">
            <tr class="info">
                <td>id</td>
                <td>uri</td>
                <td>title</td>
                <td>description</td>
            </tr>
            {include file="admin/posts/items/items_processor.tpl"}
        </table>
    </div>
</div><!--/span-->

