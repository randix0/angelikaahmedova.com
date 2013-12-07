<section id="main" class="s-section s-section__main" data-speed="5" data-type="background">
    <div class="s-section-stars" data-speed="10" data-type="background">
        {include file="std/nav/index.tpl" __PAGE="main"}
        <div class="b-contacts">
            <div class="b-contacts-stripe">
                <a class="b-contacts-btn" onclick="$('#contacts-slide').slideToggle();"></a>
            </div>
            <div id="contacts-slide" class="b-contacts-slide">
                Заказ концертов и связь по адресу <a href="mailto:info@angelikaahmedova.com">info@angelikaahmedova.com</a>
            </div>
        </div>
    </div>
</section>

{include file="global/about/index.tpl"}
{include file="global/music/index.tpl"}
{include file="global/video/index.tpl"}
{include file="global/photo/index.tpl"}
{*include file="global/blog/posts/index.tpl"*}

<script type="text/javascript">
    {literal}
    $(document).ready(function(){
        $('.b-logo, .b-nav-item_hash').bind('click', function(e){
            $.scrollTo(this.hash, this.hash);
            e.preventDefault();
        });
    });
    {/literal}
</script>