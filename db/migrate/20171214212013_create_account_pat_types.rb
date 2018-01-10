class CreateAccountPatTypes < ActiveRecord::Migration
  def change
    create_table :account_pat_types do |t|
      t.string :name
      t.references :surg_hosp_form, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
