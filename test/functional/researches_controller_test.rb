require 'test_helper'

class ResearchesControllerTest < ActionController::TestCase
  setup do
    @research = researches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:researches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create research" do
    assert_difference('Research.count') do
      post :create, research: { academic_level: @research.academic_level, academic_unit: @research.academic_unit, application_deadline: @research.application_deadline, class_required: @research.class_required, contact_info: @research.contact_info, description: @research.description, gpa: @research.gpa, paid: @research.paid, requirements: @research.requirements, student_research_assistant: @research.student_research_assistant, title: @research.title, unmjobs_name: @research.unmjobs_name, unmjobs_number: @research.unmjobs_number, work_period: @research.work_period }
    end

    assert_redirected_to research_path(assigns(:research))
  end

  test "should show research" do
    get :show, id: @research
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @research
    assert_response :success
  end

  test "should update research" do
    put :update, id: @research, research: { academic_level: @research.academic_level, academic_unit: @research.academic_unit, application_deadline: @research.application_deadline, class_required: @research.class_required, contact_info: @research.contact_info, description: @research.description, gpa: @research.gpa, paid: @research.paid, requirements: @research.requirements, student_research_assistant: @research.student_research_assistant, title: @research.title, unmjobs_name: @research.unmjobs_name, unmjobs_number: @research.unmjobs_number, work_period: @research.work_period }
    assert_redirected_to research_path(assigns(:research))
  end

  test "should destroy research" do
    assert_difference('Research.count', -1) do
      delete :destroy, id: @research
    end

    assert_redirected_to researches_path
  end
end
