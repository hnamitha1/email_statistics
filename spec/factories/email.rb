FactoryGirl.define do  
  factory :email do
  	address "barney@lostmy.name"
  	email_type "Shipment"
  	event "send"
  	timestamp {Faker::Time.between(DateTime.now - 1, DateTime.now)}
  end
end 