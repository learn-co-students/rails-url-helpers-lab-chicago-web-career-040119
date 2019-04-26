class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = get_student
  end

  def activate_student
    @student = get_student
    if @student[:active]
      @student.update(active: false)
    else
      @student.update(active: true)
    end
    redirect_to :student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def get_student
      Student.find(params[:id])
    end
end
