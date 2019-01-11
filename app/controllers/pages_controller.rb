class PagesController < ApplicationController
  def login
  end

  def home
  end

  def courses
  @courses=Course.all
    def create
      new_courses = Courses.create(
        name: params[:courses][:name],
        total_hours: params[:courses][:total_hours])
        redirect_to '/courses'
    end
  end

  def instructors
  @instructors=Instructor.all
    def create
      new_instructors = Instructors.create(
        first_name: params[:instructors][:first_name],
        last_name: params[:instructors][:last_name],
        salary: params[:instructors][:salary],
        age: params[:instructors][:age],
        education_level: params[instructors][education_level])
        redirect_to '/instructors'

    end
  end

  def students
    @students=Student.all
    def create
      Student.create(
        first_name: params[:student][:first_name],
        last_name: params[:student][:last_name],
        age: params[:student][:age], education_level: params[:student][:education_level]
      )
      redirect_to '/students'
    end
  end
end
