FactoryBot.define do
  factory :order_address do
    postal_code   { "123-1234" }
    prefecture_id { Faker::Number.between(from: 2, to: 48) }
    city          { Gimei.city.kanji }
    house_number  { Faker::Address.street_address }
    building      { Faker::Lorem.words(number: 1) }
    phone_number  { '0' + (Faker::Number.number(digits: 10)).to_s }
    token         {"tok_abcdefghijk00000000000000000"}
  end
end
