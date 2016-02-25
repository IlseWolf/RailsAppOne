class Product < ActiveRecord::Base
	has_many :comments
	has_many :orders


	def average_rating
	  comments.average(:rating).to_f
	end

end