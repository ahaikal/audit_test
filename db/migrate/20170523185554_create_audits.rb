class CreateAudits < ActiveRecord::Migration[5.0]
  def change
    create_table :audits do |t|
      t.date :datetime
      t.string :patient_id
      t.string :user_id
      t.string :user_action
      t.text :payload

      t.timestamps
    end
  end
end
