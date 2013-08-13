{include file="admin/std/sidebar/products.tpl"}

<div class="span9">
    <h1>Add post</h1>
    <hr>

    <form id="ajaxSavePost" class="form-horizontal" action="/ajax/savePost">
        <input type="hidden" name="id" value="{$post.id}" />
        <input type="hidden" id="file_upload_path" name="file[upload_path]" value="" />
        {*
        <div class="control-group">
            <label class="control-label">Photo</label>
            <div class="controls">
                <div id="photos">
                    {if isset($post.photo_s) && $post.photo_s}
                        <img src="/{$post.photo_s}" alt=""/>
                    {/if}
                </div>
                <a id="file_preview" class="btn btn-info" onclick="Window.load('/modal/upload/news/-1','win-upload','');">Load</a>
            </div>
        </div>
        *}
        <div class="control-group">
            <label class="control-label">URL-segment</label>
            <div class="controls">
                <input type="text" name="item[uri]" value="{$post.uri}" class="input-block-level"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Title</label>
            <div class="controls">
                <input type="text" name="item[iname]" value="{$post.iname}" class="input-block-level"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Description</label>
            <div class="controls">
                <textarea name="item[idesc]" class="input-block-level">{$post.idesc}</textarea>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Publish at</label>
            <div class="controls">
                <input type="date" name="item[add_date][date]" value="{$post.add_date|date_format:"%Y-%m-%d"}"/>
                <input type="time" name="item[add_date][time]" value="{$post.add_date|date_format:"%H:%M"}"/>
            </div>
        </div>


        <div class="control-group">
            <label class="control-label">
                <img src="{$RESOURCES_URL}img/misc/tags.png" alt=""/>
            </label>
            <div class="controls">
                {foreach from=$tags item=tag}
                    <div>
                        <label><input type="checkbox" name="item[tags][]" {if $tag.linked}checked="checked"{/if} value="{$tag.id}"/> {$tag.iname}</label>
                    </div>
                {/foreach}
            </div>
        </div>

        {*
        {if $post.id}
            <div><label>
                    <input type="radio" name="file[cover]" checked="checked" value="-1" /> не менять главную
                </label></div>
        {/if}
        *}

        <div class="control-group">
            <div class="controls">
                <a class="btn btn-large" data-form="#ajaxSavePost" data-action="/ajax/savePost" onclick="Ajax.save(this);">{l}SAVE{/l}</a>
            </div>
        </div>

    </form>
    <hr>

    {*
    <div class="form-horizontal">
        <div class="control-group">
            <label class="control-label">Photo</label>
            <div class="controls">
                <div id="photos">
                    {if isset($post.photos) && $post.photos}
                        {foreach from=$post.photos item=item}
                            <form id="ajaxSavePostsPhoto_{$item.id}" action="/ajax/savePostsPhoto">
                                <div id="product_photos_{$item.id}">
                                    <img class="left mB15 mR15" src="/{$item.photo_s}" alt=""/>
                                    <div><input type="hidden" name="id" value="{$item.id}"/></div>
                                    <div><input type="text" name="item[iname]" value="{$item.iname}"/></div>
                                    <div><input type="text" name="item[idesc]" value="{$item.idesc}"/></div>
                                </div>
                                <a class="btn btn-info" onclick="Posts.photoDefault(this);" data-target="products_photos" data-item_id="{$item.id}" data-news_id="{$post.id}">MAKE DEFAULT</a>
                                <a class="btn btn-info" data-form="#ajaxSavePostsPhoto_{$item.id}" data-action="/ajax/savePostsPhoto" onclick="Ajax.save(this);">SAVE</a>
                                <a onclick="Posts.del(this);" data-target="news_photos" data-item_id="{$item.id}" data-news_id="{$post.id}" class="btn btn-danger">delete</a>
                            </form>
                        {/foreach}
                    {/if}
                </div>
                <a id="file_preview" class="btn btn-info" onclick="Window.load('/modal/upload/news/-1','win-upload','');">Load</a>
            </div>
        </div>
    </div>
    *}


    <script type="text/javascript">
        {literal}

        Posts = {
            del: function(el){
                //alert('target='+target+'target_id='+target_id+'product_id='+product_id);
                var target = $(el).attr('data-target'),
                        item_id = $(el).attr('data-item_id'),
                        news_id = $(el).attr('data-news_id');
                ajax_url = '/ajax/del/'+target;
                $.ajax({
                    url: ajax_url,
                    type: 'POST',
                    data: 'item[item_id]='+item_id+'&item[parent_id]='+news_id,
                    dataType: 'json',
                    beforeSend: function(){
                    },
                    success: function(data){
                        if (data.status == 'success'){
                            $(el).addClass('btn-success');

                        } else {
                            $(el).addClass('btn-danger');
                            Window.load(SITE_URI+'modal/alertError/'+data.error,'win-alertError','');
                        }
                    }
                });
            },
            photoDefault: function(el){
                var item_id = $(el).attr('data-item_id'),
                        news_id = $(el).attr('data-news_id');
                $.ajax({
                    url: '/ajax/savePostsCover',
                    type: 'POST',
                    data: 'item[item_id]='+item_id+'&item[news_id]='+news_id,
                    dataType: 'json',
                    beforeSend: function(){
                    },
                    success: function(data){
                        if (data.status == 'success'){
                            $(el).addClass('btn-success');

                        } else {
                            $(el).addClass('btn-danger');
                            Window.load(SITE_URI+'modal/alertError/'+data.error,'win-alertError','');
                        }
                    }
                });
            }
        };

        {/literal}
    </script>