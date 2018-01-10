class CreateSurgHospForms < ActiveRecord::Migration
  def change
    create_table :surg_hosp_forms do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
