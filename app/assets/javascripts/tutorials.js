jQuery(document).ready(function() {
alert("aa");
 jQuery('tbody').hide();
   jQuery('thead').bind('click',function(){
      jQuery('tbody').slideToggle(); 
}); 


