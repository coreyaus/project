FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
	sequence(:first_name) { |n| "Test#{n}" }
	sequence(:last_name) { |n| "User#{n}" }

	factory :user, class: User do
	# the class: User isn't strictly necessary in this case
    email
    password "1234567890"
    first_name
    last_name
    admin false
	end

	factory :admin, class: User do
	  email
	  password "qwertyuiop"
	  first_name "Admin"
	  last_name
	  admin true
	end

end
