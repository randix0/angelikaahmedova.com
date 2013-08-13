<script type="text/javascript">
    $(document).ready(function(){
        $('[data-type="background"]').each(function(){
            var $bgobj = $(this); // создаем объект
            $(window).scroll(function() {
                var yPos = -($(window).scrollTop() / $bgobj.data('speed')); // вычисляем коэффициент
                // Присваиваем значение background-position
                var coords = 'center '+ yPos + 'px';
                // Создаем эффект Parallax Scrolling
                $bgobj.css({ backgroundPosition: coords });
            });
        });
    });
</script>
<script>
{literal}
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-42915971-1', 'angelikaahmedova.com');
  ga('send', 'pageview');
{/literal}
</script>
</body>
</html>