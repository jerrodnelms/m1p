class SurgHospForm < ActiveRecord::Base
  has_many :surg_hosp_form_docs
  has_many :account_pat_types
  has_many :surg_hosp_form_hospitals
  has_many :shf_omitted_conditions
  has_many :shf_dnmc_conditions
  has_many :shf_actual_conditions
end
