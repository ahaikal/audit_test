class Audit < ApplicationRecord
  include Filterable

  scope :patient_id, -> (patient_id) { where patient_id: patient_id }
  scope :user_id, -> (user_id) { where user_id: user_id }
  scope :user_action, -> (user_action) { where user_action: user_action }
  scope :datetime, -> (start_date, end_date) { where("datetime BETWEEN ? AND ?", start_date, end_date)}
  
end
