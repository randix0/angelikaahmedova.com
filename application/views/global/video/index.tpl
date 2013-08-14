<section id="video" class="s-section s-section__video" data-speed="30" data-type="background">
    <div class="s-section-stars" data-speed="10" data-type="background">
        {include file="std/nav/index.tpl" __PAGE="video"}

        <script src="{$RESOURCES_URL}js/video.js"></script>
        <style type="text/css">
            {literal}
            .vjs-default-skin { color: #ffffff }
            .vjs-play-progress, .vjs-volume-level { background-color: #bddfff; box-shadow: 0 0 8px 2px rgba(122,122,122,0.5);}
            .vjs-slider { background: rgba(51,23,23,0.2333333333333333) }
            .vjs-control-bar { width: 725px; background: none!important;  font-family: 'Times new Roman'!important; font-weight: normal!important; margin: 0 auto 50px!important; }
            {/literal}
        </style>

        <!-- Добавить в видео poster="my_video_poster.png" где вместо имени изображения поставить свое, это типо изображение показываемое когда видео грузиться -->
        <!-- Тегам высота и ширина автоматом давать расширение монитора -->
        <video id="my_video_1" class="video-js vjs-default-skin" controls
               preload="none" style="width: 100%; max-height: 100%;"
               data-setup="{ }">
            <source src="{$RESOURCES_URL}video/promo.mp4" type='video/mp4'>
            {*<source src="{$RESOURCES_URL}video/intro.webm" type='video/webm'>*}
        </video>

        <script>
            {literal}
            function my(){
                $('.vjs-play-control').before('<div class="pl_title"><h2>Название песни</h2></div>');
            }
            $(document).ready( function(){
                $('#my_video_1').attr('width', $(window).width());
                $('#my_video_1').attr('height', $(window).height());
                $('.vjs-default-skin .vjs-big-play-button').remove();
                $('.vjs-default-skin .vjs-big-play-button').css('top', '100px!important');
                $('.vjs-default-skin .vjs-big-play-button').css('left', (($(window).width()-150)/2)+'px' );
                setTimeout( my, 1000 );
            } );
            {/literal}
        </script>
    </div>
</section>