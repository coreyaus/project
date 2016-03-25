require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    @user = User.create!(email: "test@example.com", password: "543twoone")
    @another_user = User.create!(email: "test2@example.com", password: "543twoone")
  end

  describe "GET #show" do
    context "User is logged in" do
      before do
        sign_in @user
      end
      it "loads correct user details" do
        get :show, id: @user.id
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user
      end
    end
    context "No user is logged in" do
      it "redirects to login" do
        get :show, id: @user.id
        expect(response).to_not be_success
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(new_user_session_path)
      end
    end
    context "logged in user tries to access another user's show page" do
      before do
        sign_in @user
      end
      it "redirects to login" do
        get :show, id: @another_user.id
        expect(response).to_not be_success
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
    end
  end

end