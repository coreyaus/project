class StaticPagesController < ApplicationController
	def about
	end

	def contact
	end

  def landing_page
    @featured_product = Product.where(featured: true).first
    @products = Product.limit(3)
  end
end
