class CreateClinicCrConditions < ActiveRecord::Migration
  def change
    create_table :clinic_cr_conditions do |t|
      t.references :clinic_cr_doc, index: true, foreign_key: true
      t.string :type
      t.references :clinic_condition, index: true, foreign_key: true
      t.string :detail

      t.timestamps null: false
    end
  end
end
