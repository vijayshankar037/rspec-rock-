FactoryBot.define do
  factory :achievement do
    description { 'description' }
    privacy { Achievement.privacies[:private_access] }
    cover_image { 'some_image.png' }
    featured { false }

    sequence(:title) { |n| "title #{n}" }
  end
end
