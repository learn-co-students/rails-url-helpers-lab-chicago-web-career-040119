class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :activate_student]


  def index
    @students = Student.all
  end

  def show
    @status = @student[:active] ? "active" : "inactive"
  end

  def activate_student
    status = @student.active == false ? true : false
    @student.update(active: status)
    redirect_to action: "show", id: @student.id
  end

  # def update
  #   @student.update(active: params[:active] || false)
  #
  #   redirect_to action: "show", id: @student.id
  # end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
