class CreateClinicCrForms < ActiveRecord::Migration
  def change
    create_table :clinic_cr_forms do |t|
      t.references :clinic, index: true, foreign_key: true
      t.string :mysis_id
      t.string :any_pertinent_conditions
      t.integer :actual_conditions_tally
      t.integer :misdiagnosed_conditions_tally
      t.integer :captured_conditions_tally

      t.timestamps null: false
    end
  end
end
