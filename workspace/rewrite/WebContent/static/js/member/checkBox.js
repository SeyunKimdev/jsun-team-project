/**
 *  체크 박스
 */

// const $allCheck = $("input[name='all-agree']");
// const $id = $('input#id');
// const $password = $('input#password');

// $allCheck.on('change', function () {
//     let isChecked = $(this).prop('checked');
//     isChecked ? allCheck() : allNotCheck();
// });

const $checkboxs = $("input[type='checkbox']");
const $checkAll = $("input[name='checkAll']");
const $checks = $("input[name='check']");
const $options = $(".optionSection input[name='check']");

$checkAll.on('change', function () {
    let isChecked = $(this).prop('checked');
    isChecked ? allCheck() : allNotCheck();
    $checks.prop('checked', isChecked);
    $checks.trigger('change');
});

$checks.on('change', function () {
    let isChecked = $(this).prop('checked');
    let $img = $(this).next().find('img');
    if (isChecked) {
        checked($img);
        $(this).css('border-color', '#ff5d00');
        $('.checkBoxSpan').css('background-color', '#ff5d00');
    } else {
        notChecked($img);
        $(this).css('border-color', '');
        $(this).css('background-color', '');
    }
});

$options.on("change", function(){
    $(".optionSection input[type='checkbox']").prop("checked", $options.filter(":checked").length);
    $(".optionSection .checkBoxSpan img").attr("src", "/static/images/" + ($(".optionSection input[type='checkbox']").prop("checked") ? "check_all.png" : "check.png"));
});

$checkboxs.on('change', function () {
    if ($checkboxs.length == $checkboxs.filter(':checked').length) {
        $checkAll.prop('checked', true);
        allCheck();
        return;
    }
    $checkAll.prop('checked', false);
    allNotCheck();
});

function allCheck() {
    $('.checkBoxSpan').css('border-color', '#ff5d00');
    $('.checkBoxSpan').css('background-color', '#ff5d00');
}

function allNotCheck() {
    $('.checkBoxSpan').css('border-color', '');
    $('.checkBoxSpan').css('background-color', '');
}

function checked($img) {
    $img.attr('src', contextPath + "/static/images/check_all.png");
}

function notChecked($img) {
    $img.attr('src', contextPath + "/static/images/check.png");
}



