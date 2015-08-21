class TasksController < ApplicationController
  def new
    @task = Task.new
    # render 'tasks/new.html.erb'
  end

  def create
    @task = Task.new(task_params)

    @task.save
    redirect_to tasks_path
  end

  def index
    @tasks = Task.all
    # render 'tasks/index.html.erb'
  end

  def show
    @task = Task.find(params[:id])
    # render 'tasks/show.html.erb'
  end

  def edit
    @task = Task.find(params[:id])
    # render 'tasks/edit.html.erb'
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path
  end


  private

  def task_params
    params.require(:task).permit(:title, :description, :complete)
  end
end
