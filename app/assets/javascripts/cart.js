$(function () {
  $('.add_to_cart_small').colorbox({
      iframe:true,
      width: "550px",
      height: "450px"
  });
/*
    $('.add_to_cart_small').click(function() {
        var CartItem = $(this);
        var productId = CartItem.attr('prod_id');
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
                if(data == "added")
                {
                    var ProductName =  CartItem.parents('.info').eq(0).find('h3').html() ;
                    var tr = jQuery("tr");
                    var td = jQuery("td", { class: "image"});
                    var a = jQuery("a", { href: "#" });
                    var img = jQuery("img", { alt: ProductName , src: CartItem.parents('prod_hold').eq(0).find('img').attr('src') } );
                    tr.append(td.append(a.append(img)));
                    td =  jQuery("td", { class: "name"});
                    a = jQuery("a", { href: "#" });
                    a.html(ProductName);
                    tr.append(td.append(a).append(jQuery("div")));
                    td =  jQuery("td", { class: "quantity"});
                    td.append("x&nbsp;1");
                    tr.append(td);
                    td =  jQuery("td", { class: "total"});
                    td.append(CartItem.parents('prod_hold').eq(0).find('.price').html()); // adding price
                    tr.append(td);
                    td =  jQuery("td", { class: "remove"});
                    img = jQuery("img", { alt: "Remove", src:  "assets/close.png" } );
                    tr.append(td.append(img));
                    $('.cart tbody').prepend(tr);
                }
                else
                {
                    // error handling here
                }
            },
            error: function (e) {
                // error handling here
            }
        });
        return false;
    });
*/
});

