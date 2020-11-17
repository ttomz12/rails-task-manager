class TasksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def list
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(restaurant_params)
    @task.save

    redirect_to list_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(restaurant_params)

    redirect_to list_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to list_path
  end

  def show
    @task = Task.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
