$(document).ready(function(e) {
			$('#checkout').hide();
});

$(document).ready(function(e) {
			$(".sizes li").click(function(e) {
				$(".sizes li").removeClass("selected");
				$(this).addClass('selected');
			});
		});

$(document).ready(function(e) {
			$("#addToCart").click(function(e) {
				var size="";
				var gender="";
				size = $('.sizes li').filter('.selected');
				gender =	$('.gender option:selected');
				var itemsInCart = parseInt($('span#cartValue').text());
				if(size.size() == 0)
				{
					alert("Please select a size");
				}
				else
				{
					newNumberOfItems = itemsInCart + 1
					$('li.cart').effect("highlight", {}, 3000);
					$('#checkout').show();
					$('span#cartValue').text(newNumberOfItems);
				}

			});
		});