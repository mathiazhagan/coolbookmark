$(document).ready(function(){
//initial
$('#content').load('content/home.jsp');

//handle menu clicks
$('ul#nav li a').click(function(){

var page=$(this).attr('href');
$('#content').load('content/'+page+'.jsp');
return false;
});

});
