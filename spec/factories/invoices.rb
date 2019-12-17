FactoryBot.define do
  factory :invoice do
    date { "2019-12-17" }
    due_date { "2019-12-17" }
    subtotal { 1.5 }
    tax { 1.5 }
    total { 1.5 }
    paid_for { "" }
    user { nil }
  end
end
