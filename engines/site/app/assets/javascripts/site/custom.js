$(window).load(function() {
$('#carousel').flexslider({
animation: "slide",
controlNav: false,
animationLoop: true,
slideshow: false,
itemWidth: 160,
itemMargin: 1,
minItems: 2,
maxItems: 4,
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
