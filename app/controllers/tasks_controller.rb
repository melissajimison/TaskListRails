class TasksController < ApplicationController
  def index
    @all_tasks = Task.order(completed_at: :asc)#.where(completed_at: '')
end

  def show
    @task = Task.find(params[:id])
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

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(tasks_create_params[:task])
    redirect_to root_path
  end

  def allcompleted
    @all_tasks = Task.where.not(completed_at: "")
  end

  def completed
    @task = Task.find(params[:id])
    @task.update(completed_at: DateTime.now)
    @all_tasks = Task.where.not(completed_at: "")
  end

  def uncompleted
    @task = Task.find(params[:id])
    @task.update(completed_at: "")
    redirect_to root_path

  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end


  private

  def tasks_create_params
    params.permit(task: [:name, :description, :completed_at, :person_id])
    # params.permit(album: [:artist, :title])
  end
end
