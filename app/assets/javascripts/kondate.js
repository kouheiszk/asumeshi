$(document).on('turbolinks:load', function () {
    var $kondate_title_field = $('#js-query-field');
    if ($kondate_title_field.length) {
        $('.js-kondate-ate-button').on('click', function () {
            var title = $kondate_title_field.val() + ' ' + $(this).data('title');
            var keywords = title.split(' ').filter(function (element, index, self) {
                return self.indexOf(element) === index;
            });
            $kondate_title_field.val(keywords.join(' '));
        });
    }

    if (navigator.geolocation) {
        // 現在位置を取得できる場合の処理
        navigator.geolocation.getCurrentPosition(function (position) {
            var lat = position.coords.latitude;
            var lon = position.coords.longitude;
            $('#js-latitude-field').val(lat);
            $('#js-longitude-field').val(lon);
        }, function (error) {
            console.error(error);
        }, {
            enableHighAccuracy: true,
            maximumAge: 60000
        });
    }
    else {
        // 現在位置を取得できない場合の処理
        alert("あなたの端末では、現在位置を取得できません。");
    }
});
