class SurgHospCrDoc < ActiveRecord::Base
  belongs_to :surg_hosp_cr
  has_many :surg_hosp_cr_conditions, :dependent => :destroy
  accepts_nested_attributes_for :surg_hosp_cr_conditions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
