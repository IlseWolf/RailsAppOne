class StaticPagesController < ApplicationController
  def index
  end 

  def landing_page
  	@featured_product = Product.first 
  	@products = Product.limit(3)
  end

  def contact
  	@products = Product.limit(3)
  end 

  def about
  	@products = Product.limit(3)
  end 

  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
      :to => 'i.e.m.wolf@gmail.com',
      :subject => "A new contact form message from #{@OwlsRus}",
      :body => @message).deliver_now
  end

end 
