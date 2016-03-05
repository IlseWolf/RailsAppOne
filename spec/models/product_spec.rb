require 'rails_helper'

describe Product do
	context "when the product has comments" do
      before do 
      	#this is all imput/ingredients for your test. To calculate @Product_average_rating 
      	#the variables product, user and comment are the ingridient and need to be defined
      	#as instance variables
        @product = Product.create!(name: "Test Owl") 
        @user= User.create!(email: "test@test.com", password: "testtest")
        @product.comments.create!(rating: 1, user: @user, body: "it ate my hamster")
        @product.comments.create!(rating: 3, user: @user, body: "love it!")
        @product.comments.create!(rating: 5, user: @user, body: "wonderful!")
      end 

      it "returns the average rating of all 3 comment above eq 3" do
      	expect(@product_average_rating).to eq "3"
      end   
	end 

  context "validation check for if a product has no name" do
    before do
      Product.new(description: "this is an invalid test")
    end

    it "is invalid input" do
      expect(Product.new(description: "this is a test for invalid input")).not_to_be_valid
    end
  end
end

