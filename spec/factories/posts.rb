FactoryBot.define do
  factory :post do
    title { 'John' }
    content  { 'Doe' }

    association :user
  end
end