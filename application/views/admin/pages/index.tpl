<div class="span3">
    <div class="well sidebar-nav">
        <ul class="nav nav-list">
            <li class="nav-header"><h3>Pages</h3></li>
        </ul>
    </div><!--/.well -->
</div><!--/span-->

<div class="span9">
    <h1>Add post</h1>
    <hr>

    {if $pages}
        {foreach from=$}
    <form id="ajaxSavePost" class="form-horizontal" action="/ajax/savePost">
        <input type="hidden" name="id" value="{$post.id}" />
        <input type="hidden" id="file_upload_path" name="file[upload_path]" value="" />

        <div class="control-group">
            <label class="control-label">Title</label>
            <div class="controls">
                <input type="text" name="item[iname]" value="{$post.iname}" class="input-block-level"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Description</label>
            <div class="controls">
                <textarea name="item[idesc]" rows="15" class="input-block-level">{$post.idesc}</textarea>
            </div>
        </div>
    </form>
</div>
