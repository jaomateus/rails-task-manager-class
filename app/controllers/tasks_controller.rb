class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def view
    @task = Task.find(params[:id])
    raise
  end
end
