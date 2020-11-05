FactoryBot.define do
    factory :user do
        username { Faker::Games::Zelda.character }
        password { "password123" }
    end
end