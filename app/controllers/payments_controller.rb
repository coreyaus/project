class PaymentsController < ApplicationController

	def create
		# Get the product being purchased
		@product = Product.find(params[:product_id])
		@user = current_user
		# Get the credit card details submitted by the form
	  token = params[:stripeToken]
	  begin
			# Create a Customer
			customer = Stripe::Customer.create(
			  :source => token,
			  :email => params[:stripeEmail],
	      :description => params[:stripeEmail]
			)
			# Charge the Customer instead of the card
			charge = Stripe::Charge.create(
		    :amount => @product.price_in_cents,
		    :currency => "aud",
		    :customer => customer.id
			)
			if charge.paid
			  @order = Order.create(total: @product.price, product_id: @product.id, user_id: @user.id, stripe_id: charge.id)
			end

	  rescue Stripe::CardError => e
    #===
    # SAMPLE ERROR HANDLER FROM CF
    #===
	    # body = e.json_body
	    # err = body[:error]
	    # flash[:alert] = "Payment error: #{err[:message]}"
	    # redirect_to @product
    #===
    # SAMPLE ERROR HANDLER FROM STRIPE DOCS
    #===
	    flash[:alert] = "Payment error: #{e.message}"
		  redirect_to @product
	  end
	end

end
