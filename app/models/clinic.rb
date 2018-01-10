class Clinic < ActiveRecord::Base
  has_many :clinic_docs
  has_many :clinic_accurate_conditions
  has_many :clinic_misdiagnosed_conditions
  has_many :clinic_omitted_conditions
end
