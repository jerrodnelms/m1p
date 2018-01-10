class CreateSurgHospCrDocs < ActiveRecord::Migration
  def change
    create_table :surg_hosp_cr_docs do |t|
      t.references :surg_hosp_cr, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
