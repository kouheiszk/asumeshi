$(document).on('turbolinks:load', function () {
    var $kondate_title_field = $('.js-kondate-title-field');
    if ($kondate_title_field.length) {
        $('.js-kondate-ate-button').on('click', function () {
            var title = $kondate_title_field.val() + ' ' + $(this).data('title');
            var keywords = title.split(' ').filter(function (element, index, self) {
                return self.indexOf(element) === index;
            });
            $kondate_title_field.val(keywords.join(' '));
        });
    }
});