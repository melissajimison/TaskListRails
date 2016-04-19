class TasksController < ApplicationController
  def index
    @all_tasks = Task.order(name: :asc)

  end

  def by_name

    @all_tasks = Task.where(name: params[:name])

  end
end
