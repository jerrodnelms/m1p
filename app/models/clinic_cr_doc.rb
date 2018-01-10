class ClinicCrDoc < ActiveRecord::Base
  belongs_to :clinic_cr_form
  belongs_to :clinic_doc
  has_many :clinic_cr_conditions, :dependent => :destroy
  accepts_nested_attributes_for :clinic_cr_conditions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
