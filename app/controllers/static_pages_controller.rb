class StaticPagesController < ApplicationController
	def about
	end

	def contact
	end

  def landing_page
    @featured_product = Product.where(featured: true).first
    @products = Product.limit(3)
  end

	def thanks
	  @name = params[:name]
	  @email = params[:email]
	  @message = params[:message]
		# ActionMailer::Base.mail(from: @email,
		# 	to: 'corey@codenation.com',
		# 	subject: "A new contact form message from #{@name}",
		# 	body: @message).deliver_now
	  UserMailer.contact_form(@email, @name, @message).deliver_now
	end

end
