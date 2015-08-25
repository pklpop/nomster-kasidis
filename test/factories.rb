FactoryGirl.define do
	factory :user do
		sequence :email do |n|
		"person#{n}@example.com"
		end
		password "passwordsample"
		password_confirmation "passwordsample"
	end

	factory :place do
		name "Lobster Pot"
		address "62 Lenton Boulevard, Nottingham"
		description "good"
		latitude 42.3478210
		longitude 12.2312124
		association :user
	end	

	factory :comment do
		message "yolo"
		rating "1_star"
		association :user
		association :place
	end
end
