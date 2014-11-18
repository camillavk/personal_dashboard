class TasksController < ApplicationController

  def new
    @todo = Todo.find(params[:todo_id])
    @task = Task.new
  end

  def create
    @todo = Todo.find(params[:todo_id])
    @task = @todo.tasks.new(params.require(:task).permit(:task))
    @task.user = current_user
    @task.save
    redirect_to '/'
  end

end
