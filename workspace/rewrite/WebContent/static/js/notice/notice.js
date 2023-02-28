/**
 *  공지사항
 */

/* $(function () {
    $('listA').on('mouseover', function (e) {
        $(this).css(background-color='red');
    });
}); */

$(document).ready(function () {
    $('.listA').mouseover(function () {
        $(this).css('background-color', '#f3f3f3');
    });

    $('.listA').mouseout(function () {
        $(this).css('background-color', 'white');
    });
});
