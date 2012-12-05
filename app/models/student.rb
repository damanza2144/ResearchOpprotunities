class Student < ActiveRecord::Base
  default_scope :order => 'lastName'
  attr_accessible :GPA, :email, :firstName, :interests, :lastName, :major, :minor
  validates :firstName, :lastName, :email, :presence => true
  validates :GPA, :numericality => {:greater_than_or_equal_to => 0.01}
end
