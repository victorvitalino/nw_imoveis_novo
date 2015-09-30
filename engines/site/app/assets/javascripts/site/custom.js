$(window).load(function() {
$('#carousel').flexslider({
animation: "slide",
controlNav: false,
animationLoop: false,
slideshow: false,
itemWidth: 210,
itemMargin: 10,
maxItems: 6,
move: 1,
asNavFor: '#slider'
});

$('#slider').flexslider({
animation: "slide",
controlNav: false,
animationLoop: false,
slideshow: false
});
});
