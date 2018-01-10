class ClinicCrCondition < ActiveRecord::Base
  belongs_to :clinic_cr_doc
  belongs_to :clinic_condition
end
