require 'rails_helper'

RSpec.describe PaymentsController, type: :controller do

  describe "POST #create" do

    before do
      @user = FactoryGirl.create(:user)
      @product = FactoryGirl.create(:product)
      params = {}
      params.product_id = @product.id
      params.stripeToken = "lkdjsflkj9280984"
      params.stripeEmail = "testpayment@example.com"
    end

    it "returns http success" do
      post :create
      expect(response).to have_http_status(:success)
    end

  end

end
