class LabsController < ApplicationController
  def new
    @labs = Lab.new
    @themes = SubjectTheme.all
  end

  def create
    @lab = Lab.new(lab_params)
    if @lab.save
      redirect_to courses_path
    else
      render :new
    end
  end

  def index
    @labs = Lab.all
  end

  def edit
    @lab = Lab.find(params[:id])
    @themes = SubjectTheme.all
  end

  def show
    @labs = Lab.find(params[:id])
  end

  def update
    @labs = Lab.find(params[:id])

    if @labs.update(lab_params)
      redirect_to courses_path
    else
      render 'edit'
    end
  end

  def destroy
    @lab = Lab.find(params[:id])
    if @lab.destroy
      redirect_to labs_path
    else
      redirect_to labs_path, error: "This lab not delete"
    end
  end

  private

  def lab_params
    params[:lab].permit(:theme_name, :subject_theme_id, :goal, :text)
  end

end
