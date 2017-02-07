class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new
    @task.name = params[:task][:name]
    @task.status = params[:task][:status]
    @task.save!
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.name = params[:task][:name]
    @task.status = params[:task][:status]
    @task.save!
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    Task.destroy(@task)
    redirect_to tasks_path
  end
end
