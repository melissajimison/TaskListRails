class TasksController < ApplicationController
  def index
    @all_tasks = Task.order(completed_at: :asc).where(completed_at: nil)

  end

  def by_name
    @all_tasks = Task.where(name: params[:name])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_create_params[:task])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def completed
    @task = Task.find(params[:id])
    @task.update(completed_at: DateTime.now)
    @all_tasks = Task.where.not(completed_at: nil)
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end


  private

  def tasks_create_params
    params.permit(task: [:name, :description, :completed_at])
    # params.permit(album: [:artist, :title])
  end
end
