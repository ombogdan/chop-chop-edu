class ThemesController < ApplicationController
  def new
    @theme = SubjectTheme.new
    @courses = Course.all
  end

  def create
    @theme = SubjectTheme.new(theme_params)
    if @theme.save
      redirect_to courses_path
    else
      render :new
    end
  end

  def index
    @themes = SubjectTheme.all
  end

  def edit
    @theme = SubjectTheme.find(params[:id])
  end

  def show
    @themes = SubjectTheme.find(params[:id])
    theme = SubjectTheme.find(params[:id])
    @lectures = Lecture.where(subject_theme_id: theme)
    @practices = Practice.where(subject_theme_id: theme)
    @labs = Lab.where(subject_theme_id: theme)
  end

  def update
    @theme = SubjectTheme.find(params[:id])

    if @theme.update(theme_params)
      redirect_to courses_path
    else
      render 'edit'
    end
  end

  def destroy
    @theme = SubjectTheme.find(params[:id])
    if @theme.destroy
      redirect_to themes_path
    else
      redirect_to themes_path, error: "This theme not delete"
    end
  end

  private

  def theme_params
    params[:subject_theme].permit(:theme_name, :course_id)
  end
end
