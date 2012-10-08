function onMouseOverMoreInfoButton() {
    $(this).addClass("btn-success");
    $(this).find(".more-info-icon").addClass("icon-white");
}

function onMouseLeaveMoreInfoButton() {
    $(this).removeClass("btn-success");
    $(this).find(".more-info-icon").removeClass("icon-white");
}

$(document).ready(function() {
    $(".more-info-button").mouseover(onMouseOverMoreInfoButton).mouseleave(onMouseLeaveMoreInfoButton);
});