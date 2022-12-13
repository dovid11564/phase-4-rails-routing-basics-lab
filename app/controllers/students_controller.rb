class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students, status: :ok
  end

  def grades
    capybaras = Student.order(grade: :desc)
    render json: capybaras, status: :ok
  end
end
