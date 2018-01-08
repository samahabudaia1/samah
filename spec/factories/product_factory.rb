FactoryGirl.define do
  sequence :name do |n|
		"Bike #{n}"
	end
	
	factory :product do
		name 
		description "nice bike"
		color "blue"
		price "130"		
	end
end