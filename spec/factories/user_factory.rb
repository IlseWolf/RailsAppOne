#no factories outside this block!
#remember to add class:...when the factory doesn't have same name as model
FactoryGirl.define do

#general syntax of sequence 
sequence(:email) { |n| "user#{n}@example.com" }

	factory :user do
      email #input throuhg sequence
      password "testtest"
      first_name "John"
      last_name 'Doe'
      admin false
	end

	factory :admin, class: User do
      email #input through sequence
      password "admintest"
      admin true
      first_name "Admin"
      last_name "User"
    end

end