Instagram = {
    pagination: '',
    loadmore: function(el, url){
        $.ajax({
            url: '/ajax/getMorePhotos',
            type: 'post',
            data: 'pagination='+url,
            dataType: 'html',
            success: function(data){
                $(el).parent().remove();
                $('.images').append(data);
            }
        });
    }
};