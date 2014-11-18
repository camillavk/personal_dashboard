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

  end

  def todo_params
    params.require(:todo).permit(:name)
  end
