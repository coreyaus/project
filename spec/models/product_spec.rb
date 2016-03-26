require 'rails_helper'

describe Product, type: :model do
# the type: :model isn't strictly necessary in this case

	context "when the product has comments" do
		before do
		  @product = FactoryGirl.create(:product)
		  @user = User.create!(email: "test@example.com", password: "543twoone")
		  @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
		  @product.comments.create!(rating: 2, user: @user, body: "Average bike!")
		  @product.comments.create!(rating: 4, user: @user, body: "Good bike!")
		  @product.comments.create!(rating: 5, user: @user, body: "Excellent bike!")
		end
		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end
	end

	context "when the product has no name" do
		it "is not valid" do
			expect(FactoryGirl.build(:product, name: "")).not_to be_valid
		end
	end
	context "when the product has no price" do
		it "is not valid" do
			expect(FactoryGirl.build(:product, price: "")).not_to be_valid
		end
	end

end