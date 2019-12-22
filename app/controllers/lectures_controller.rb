class LecturesController < ApplicationController
  def new
    @lecture = Lecture.new
    @themes = SubjectTheme.all
  end

  def create
    @lecture = Lecture.new(lecture_params)
    if @lecture.save
      redirect_to courses_path
    else
      render :new
    end
  end

  def index
    @lectures = Lecture.all
  end

  def edit
    @lecture = Lecture.find(params[:id])
    @themes = SubjectTheme.all
  end

  def show
    @lecture = Lecture.find(params[:id])
  end

  def update
    @lecture = Lecture.find(params[:id])

    if @lecture.update(lecture_params)
      redirect_to courses_path
    else
      render 'edit'
    end
  end

  def destroy
    @lecture = Lecture.find(params[:id])
    if @lecture.destroy
      redirect_to lectures_path
    else
      redirect_to lecture_path, error: "This course not delete"
    end
  end

  private

  def lecture_params
    params[:lecture].permit(:theme_name, :subject_theme_id, :text, :id_test)
  end

end
