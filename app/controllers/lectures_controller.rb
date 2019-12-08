class LecturesController < ApplicationController
  def new
    @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.new(lecture_params)
    if @lecture.save
      redirect_to "/lectures"
    else
      render :new
    end
  end

  def index
    @lectures = Lecture.all
  end

  def edit
    @lecture = Lecture.find(params[:id])
  end

  def show
    @lecture = Lecture.find(params[:id])
  end

  def update
    @lecture = Lecture.find(params[:id])

    if @lecture.update(lecture_params)
      redirect_to @lecture
    else
      render 'edit'
    end
  end

  def destroy
    @lecture = Lecture.find(params[:id])
    if @lecture.destroy
      redirect_to lecture_path
    else
      redirect_to lecture_path, error: "This course not delete"
    end
  end

  private

  def lecture_params
    params[:lecture].permit(:theme_name, :id_subject_theme, :text, :id_test)
  end

  def find_lecture
    @lecture = Lecture.find(params[:id])

  end
end
