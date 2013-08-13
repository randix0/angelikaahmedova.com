{if isset($posts) && $posts}
    {foreach from=$posts item=post}
        <div class="b-blog-article">
            <h1 class="b-blog-article-title">
                <a class="b-blog-article-title-link" href="/blog/post/{$post.id}/">{$post.iname}</a>
            </h1>
            {$post.add_date|actionTime:'time':'b-blog-article-time timestamp'}
            <div class="article_idesc">
                {$post.idesc|truncate:300}
            </div>
            {*if isset($post.tags) && $post.tags}
                {counter name="post_tags" assign="t" start=0}
                <div class="tags">
                    {foreach from=$post.tags item=tag}
                        <a href="#">{if $t > 0},{/if}{$tag.tag}</a>
                    {/foreach}
                </div>
            {/if*}
            <a href="#" class="comment">Коментарии ({$post.comments_count})</a>
        </div>
    {/foreach}
{/if}