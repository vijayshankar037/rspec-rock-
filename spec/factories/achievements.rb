# FactoryBot.define do
#   factory :achievement do
#     sequence(:title) { |n| "Achievement #{n}" }
#     description {'description'}
#     privacy {Achievement.privacies[:private_access]}
#     featured {false}
#     cover_image {'some_image.png'}

#     factory :public_achievement do
#       privacy Achievement.privacies[:public_access]
#     end
#   end
# end

FactoryBot.define do
  factory :achievement do
    description {'description'}
    privacy {Achievement.privacies[:private_access]}
    cover_image {'some_image.png'}
    featured {false}

    sequence(:title) { |n| "title #{n}" }
  end
end
