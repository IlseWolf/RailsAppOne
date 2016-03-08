require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    #@user = User.create!(email: "test@test.com", password: "testtest")
    #@user2 = User.create!(email: "test2@test.com", password: "test2test2")
    @user = FactoryGirl.create(:user)
    @user2 = FactoryGirl.create(:user)
  end

  describe "GET #show" do
     context "User is logged in" do
       before do
         sign_in @user 
       end

       it "loads correclty" do
         get :show, id: @user.id
         expect(response).to have_http_status(200)
         expect(assigns(:user)).to eq @user
       end 
     end

     context "User is NOT logged in" do
       it "redirects to login" do
         get :show, id: @user.id
         expect(response).to redirect_to(new_user_session_path)
       end
     end

     #advanced part 6.3
     context "user cannot acces user2 show page" do
       before do
         sign_in @user
       end

       it " tries to acces show page user2, redirects to root_path" do
         get :show, id: @user2.id
         expect(response).to have_http_status(401)
         expect(response).to redirect_to(root_path) 
       end
     end
  end
end