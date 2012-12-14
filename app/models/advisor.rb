class Advisor < ActiveRecord::Base
	
	default_scope :order => 'last_name'
	
	attr_accessible :first_name, :last_name, :email, :phone_number
	
	validates :first_name, :last_name, :email, :phone_number, :presence => true
	
	has_many :researches, :dependent => :destroy
	before_destroy :ensure_not_referenced_by_any_researches
	
	private
	
	def ensure_not_referenced_by_any_researches
		if researches.empty?
			return true
		else
			errors.add( :base, 'Researches present' )
			return false
		end
	end
end
