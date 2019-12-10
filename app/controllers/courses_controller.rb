class CoursesController < ApplicationController

  def new
    @courses = Course.new
  end

  def create
    @course = Course.new(course_param)
    if @course.save
      redirect_to courses_path
    else
      render :new
    end
  end

  def index
    @courses = Course.all
  end

  def edit
    @courses = Course.find(params[:id])
  end

  def show
    @courses = Course.find(params[:id])
  end

  def update
    @courses = Course.find(params[:id])

    if @courses.update(course_param)
      redirect_to @courses
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    if @course.destroy
      redirect_to courses_path
    else
      redirect_to courses_path, error: "This course not delete"
    end
  end

  private

  def course_param
    params[:course].permit(:name)
  end
  
  def homepage
  end
end
