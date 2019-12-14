class PracticesController < ApplicationController
    def new
      @practice = Practice.new
    end

    def create
      @practice = Practice.new(practice_params)
      if @practice.save
        redirect_to practices_path
      else
        render :new
      end
    end

    def index
      @practices = Practice.all
    end

    def edit
      @practice = Practice.find(params[:id])
    end

    def show
      @practice = Practice.find(params[:id])
    end

    def update
      @practices = Practice.find(params[:id])

      if @practices.update(practice_params)
        redirect_to @practices
      else
        render 'edit'
      end
    end

    def destroy
      @practice = Practice.find(params[:id])
      if @practice.destroy
        redirect_to practices_path
      else
        redirect_to practices_path, error: "This lab not delete"
      end
    end

    private

    def practice_params
      params[:practice].permit(:theme_name, :subject_theme_id, :text)
    end
end
