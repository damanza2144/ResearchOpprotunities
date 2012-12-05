class ProfileController < ApplicationController
  def index
     @students = Student.all
  end
end
