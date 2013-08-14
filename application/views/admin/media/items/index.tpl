<div class="span3">
    <div class="well sidebar-nav">
        <ul class="nav nav-list">
            <li class="nav-header"><h3>Filtering</h3></li>
            <li class="{if $__SUBPAGE == 'all'}active{/if}"><a href="{$SITE_URI}admin/users/all">All</a></li>
            <li class="{if $__SUBPAGE == 'active'}active{/if}"><a href="{$SITE_URI}admin/users/active">Active</a></li>
            <li class="{if $__SUBPAGE == 'deleted'}active{/if}"><a href="{$SITE_URI}admin/users/deleted">Deleted</a></li>
            <li class="{if $__SUBPAGE == 'admin'}active{/if}"><a href="{$SITE_URI}admin/users/admin">ADMIN</a></li>
        </ul>
    </div><!--/.well -->
</div><!--/span-->

<div class="span9">
    <h1>Music</h1>
    <hr>

    <table class="table table-bordered" data-offset="">
        <tbody id="admin_users">
        <tr class="info">
            <td>id</td>
            <td>link</td>
            <td>iname</td>
            <td>idesc</td>
            <td>position</td>
            <td>add_date</td>
            <td>is_deleted</td>
        </tr>
        {include file="admin/media/items/items_proccessor.tpl" type='music'}
        </tbody>
    </table>

    <table class="table table-bordered" data-offset="">
        <tbody id="admin_users">
        <tr class="info">
            <td>id</td>
            <td>link</td>
            <td>iname</td>
            <td>idesc</td>
            <td>position</td>
            <td>add_date</td>
            <td>is_deleted</td>
        </tr>
        {include file="admin/media/items/items_proccessor.tpl" type='video'}
        </tbody>
    </table>

    {*<a class="btn" data-code="{$getItems_code}" data-order_by="{$order_by}" onclick="LoadMore.q(this);">load more</a>
    <script type="text/javascript">
        LoadMore = {
            start: 0,
            target: '#admin_users',
            code: null,
            order_by: null,
            q: function(el){
                LoadMore.start = $(LoadMore.target+' tr:last-child').attr('data-id');
                if (!LoadMore.code) LoadMore.code = $(el).attr('data-code');
                if (!LoadMore.order_by) LoadMore.order_by = $(el).attr('data-order_by');
                $.ajax({
                    url: '/ajax/getUsers/'+ LoadMore.code+'/'+ LoadMore.order_by + '/' + LoadMore.start,
                    type: 'POST',
                    dataType: 'html',
                    success: function(data){
                        if (data)
                            $(LoadMore.target).append(data);
                        else
                            $(el).hide();
                    }
                });
            }
        };
    </script>
    *}

</div>

{*
<script type="text/javascript">
    onScrollLoader.init('/ajax/getPhotosExt/{$getItems_code}/{$order_by}/', '#admin_photos .admin_photos_item');
</script>
*}