class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # View all the tasks
  def index
    @tasks = Task.all
  end

  # View the details of one task
  def show
  end

  # Create a new task

  # Open empty form to fill the task details
  def new
    @task = Task.new
  end

  # create a new task with the data filled on the form
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  # Edit an existing Task
  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  #delete an existing task
  def destroy
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
