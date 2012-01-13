$(function () {
    $('.add_to_cart_small').click(function() {
        var productId = "23";
        $.ajax({
            type: 'GET',
            url: '/add_to_cart/' + productId,
            //data: "{}",
            async: true,
            cache: false,
            beforeSend: function () {
               // need to do some ui action
            },
            success: function (data) {
                alert(data);
            },
            error: function (e) {}
        });
    });
});