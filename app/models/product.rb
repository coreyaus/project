class Product < ActiveRecord::Base
  has_many :orders
  has_many :comments

  validates_presence_of :name, :price

	def average_rating
		comments.average(:rating).to_f
	end

	# round price to the nearest cent
	# remove decimal places
	def price_in_cents
		(price * 100).round(0).to_i
	end

end
