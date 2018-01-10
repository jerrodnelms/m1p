class SurgHospCr < ActiveRecord::Base
  belongs_to :surg_hosp_form
  belongs_to :surg_hosp_form_hospital
  belongs_to :account_pat_type
  has_many :surg_hosp_cr_docs, :dependent => :destroy
  accepts_nested_attributes_for :surg_hosp_cr_docs, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
