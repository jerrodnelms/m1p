class CreateSurgHospCrs < ActiveRecord::Migration
  def change
    create_table :surg_hosp_crs do |t|
      t.references :surg_hosp_form, index: true, foreign_key: true
      t.references :surg_hosp_form_hospital, index: true, foreign_key: true
      t.references :account_pat_type, index: true, foreign_key: true
      t.integer :account_pat_num
      t.date :admit_date
      t.date :discharg_date
      t.string :any_pertinent_conditions_string
      t.integer :omitted_conditions_tally
      t.integer :dnmc_conditions_tally
      t.integer :actual_conditions_tally

      t.timestamps null: false
    end
  end
end
