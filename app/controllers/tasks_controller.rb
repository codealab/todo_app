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

  private

  def task_params
    params.require(:task).permit(:title, :description, :complete)
  end
end
