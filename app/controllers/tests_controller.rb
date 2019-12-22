class TestsController < ApplicationController
  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    if @test.save
      redirect_to tests_path
    else
      render :new
    end
  end

  def edit
    @test = Course.find(params[:id])
  end

  def show
    @test = Course.find(params[:id])
  end

  def update
    @test = Course.find(params[:id])

    if @test.update(test_params)
      redirect_to @test
    else
      render 'edit'
    end
  end

  def destroy
    @test = Test.find(params[:id])
    if @test.destroy
      redirect_to tests_path
    else
      redirect_to tests_path, error: "This test not delete"
    end
  end

  private

  def test_params
    params[:test].permit(:questions, :answers)
  end

end
