class CreateSurgHospFormDocs < ActiveRecord::Migration
  def change
    create_table :surg_hosp_form_docs do |t|
      t.string :name
      t.references :surg_hosp_form, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
