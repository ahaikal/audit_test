FactoryGirl.define do
  factory :audit do
    datetime             { Faker::Date.between(100.days.ago, Date.today) }
    patient_id           { Faker::Number.between(1, 10) }
    user_id              { Faker::Number.between(1, 10) }
    user_action               { ['GET', 'POST'].sample }
    payload              { Faker::ChuckNorris.fact }
  end
end

# 1000.times  {FactoryGirl.create :audit}
# t.string   "datatime"
# t.integer  "patient_id"
# t.integer  "user_id"
# t.string   "action"
# t.text     "payload"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
