FactoryBot.define do
  factory :user do
    username { Faker::Name.name }
    password { Faker::Lorem.characters(number: 6) }
    email { Faker::Internet.email }
    role { :user }
  end
end
