FactoryGirl.define do
	sequence(:name) { |n| "Test Product #{n}" }

	factory :product, class: Product do
	# the class: Product isn't strictly necessary in this case
    name
    description "Lorem ipsum dolor sit amet"
    image_url "https://source.unsplash.com/category/nature/1200x528"
    colour "Bluey-green"
    price 19.50
    featured false
	end

end
