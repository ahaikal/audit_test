class CreateAudits < ActiveRecord::Migration[5.0]
  def change
    create_table :audits do |t|
      t.string :datetime
      t.integer :patient_id
      t.integer :user_id
      t.string :action
      t.text :payload

      t.timestamps
    end
  end
end
