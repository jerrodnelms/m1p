class CreateClinicCrDocs < ActiveRecord::Migration
  def change
    create_table :clinic_cr_docs do |t|
      t.references :clinic_cr_form, index: true, foreign_key: true
      t.references :clinic_doc, index: true, foreign_key: true
      t.string :pcp

      t.timestamps null: false
    end
  end
end
