class ClinicCrForm < ActiveRecord::Base
  belongs_to :clinic
  has_many :clinic_cr_docs, :dependent => :destroy
  accepts_nested_attributes_for :clinic_cr_docs, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
