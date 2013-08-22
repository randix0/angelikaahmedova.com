{if isset($comments) && $comments}
    {foreach from=$comments item=comment}
        <div class="b-comments-item">
            {$comment.user_full_name} -&gt; {$comment.idesc}
            {$comment.add_date|actionTime:'time':'b-comments-item-time timestamp'}
        </div>
    {/foreach}
{/if}