class TasksController < ApplicationController
  def index
    @all_tasks = Task.order(name: :asc)

  end

  def by_task

    @all_tasks = Task.where(name: params[:name])

    render :index
  end
end
