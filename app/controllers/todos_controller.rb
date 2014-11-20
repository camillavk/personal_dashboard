class TodosController < ApplicationController

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user = current_user
    @todo.save
    redirect_to '/'
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    flash[:notice] = 'Todo list deleted successefully'
    redirect_to '/'
  end

end

  def todo_params
    params.require(:todo).permit(:name)
  end
