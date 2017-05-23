FactoryGirl.define do
  factory :audit do
    datetime             { Faker::Date.between(2.days.ago, Date.today) }
    patient_id           { Faker::Number.between(1, 10) }
    user_id              { Faker::Number.between(1, 10) }
    action               { 'GET' }
    payload              { Faker::ChuckNorris.fact }
  end
end


# t.string   "datatime"
# t.integer  "patient_id"
# t.integer  "user_id"
# t.string   "action"
# t.text     "payload"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
