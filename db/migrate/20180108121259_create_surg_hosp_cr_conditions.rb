class CreateSurgHospCrConditions < ActiveRecord::Migration
  def change
    create_table :surg_hosp_cr_conditions do |t|
      t.references :surg_hosp_cr_doc, index: true, foreign_key: true
      t.string :type
      t.string :name
      t.string :detail

      t.timestamps null: false
    end
  end
end
