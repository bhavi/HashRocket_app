var payment; 		
jQuery(function(){ 
	
	Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content')); 
	return payment.setupForm(); 
 });
	
 payment = { 
	setupForm: function(){
		 $("#payForm").submit(function(event) {
                   // disable the submit button to prevent repeated clicks
                   $('input[type=submit]').attr('disabled', true);
                     payment.processCard();
                     return false;
                });
           },

 	processCard: function(){
 	var card; 
		card = {
	 	 number: $('#card_number').val(), 
		 cvc: $('#card_code').val(), 
		 expMonth: $('#card_month').val(),
		 expYear: $('#card_year').val() 
		 }; 

	       Stripe.createToken(card, payment.handleStripeResponse);
              }, 

 	handleStripeResponse: function(status,response){ 
	     if (status === 200){
                alert(response.id);		
             } else { 
		alert(response.error.message);
 	   } 
        } 
    }; 
