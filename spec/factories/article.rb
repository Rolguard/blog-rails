FactoryBot.define do
  factory :article do
    title { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraphs(number: 2) }
    association :user

    trait :published do
      publish_status { "public" }
    end

    trait :private do
      publish_status { "private" }
    end

    trait :accepted do
      approval_status { "accepted" }
    end

    trait :pending do
      approval_status { "pending" }
    end


    # Can use FactoryBot.create(:article, :published, :accepted) instead of
    # Creating an inherited factory, this makes it clearer if there are multiple traits
    # factory :public_and_accepted_article, traits: [ :published, :accepted ]
    # factory :public_and_pending_article, traits: [ :published, :pending ]
    # factory :private_and_accepted_article, traits: [ :private, :accepted ]
  end
end
