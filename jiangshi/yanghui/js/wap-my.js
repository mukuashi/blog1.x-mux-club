$(function(){
	//幻灯片
	var o = $(".swiper-container");
	var i = $(".swiper-pagination");
	var n = $(".custom-image-swiper");
	var a = {
		mode: "horizontal",
		pagination: i[0],
		paginationClickable: !0,
		calculateHeight: !0,
		autoplay: 3500,
		onSlideChangeStart: function(e) {
			var t = n.find(".js-slide-lazy"),
				o = e.activeIndex;
			t.eq(o).trigger("appear"), t.eq(o + 1).trigger("appear")
		},
		onTouchStart: function(e) {
			e.stopAutoplay()
		},
		onTouchEnd: function(e) {
			e.startAutoplay()
		}
	};
	if (o.find(".swiper-slide").length > 1) {
		$(".content").width() >= 540 && $.extend(a, {
			slidesPerView: 1.5
		}); {
			new Swiper(o[0], a)
		}
	}
})