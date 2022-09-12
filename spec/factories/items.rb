FactoryBot.define do
  factory :item do
    name                   { Faker::Lorem.words }
    info                   { Faker::Lorem.sentence }
    price                  { Faker::Number.between(300, 9999999) }
    item_image             { Faker::Lorem.sentence }
    category_id            { Faker::Number.between(2, 11) }
    sales_status_id        { Faker::Number.between(2, 7) }
    shipping_fee_status_id { Faker::Number.between(2, 3) }
    prefecture_id          { Faker::Number.between(2, 48) }
    scheduled_delivery_id  { Faker::Number.between(2, 4) }
  end
end
