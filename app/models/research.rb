class Research < ActiveRecord::Base

	attr_accessible :academic_level, :academic_unit, :application_deadline, :class_required, :contact_info, :description, :gpa, :paid, :requirements, :student_research_assistant, :title, :unmjobs_name, :unmjobs_number, :work_period
	belongs_to :advisor
	
end
