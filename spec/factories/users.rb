FactoryBot.define do
  factory :user do
    gimei = Gimei.name
    gimei_last = [gimei.last.kanji, gimei.last.hiragana, gimei.last.katakana]
    gimei_first = [gimei.first.kanji, gimei.first.hiragana, gimei.first.katakana]

    nickname              { Faker::Name.name }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    last_name             { gimei_last.sample }
    first_name            { gimei_first.sample }
    last_name_kana        { gimei.last.katakana }
    first_name_kana       { gimei.first.katakana }
    birth_date            { Faker::Date.birthday(min_age: 5, max_age: 92) }
  end
end