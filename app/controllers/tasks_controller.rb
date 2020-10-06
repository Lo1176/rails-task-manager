class TasksController < ApplicationController
  validates :title, presence: true

  # read all tasks
  def index
    @tasks = Task.all
  end

  # read one task
  def show
    @task = Task.find(params[:id])
  end

  def new
    task = Task.new
    task.save
  end

end
