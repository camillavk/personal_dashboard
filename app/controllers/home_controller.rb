class HomeController < ApplicationController

  def index
    @locations = Location.all
    @todos = Todo.all
    @tasks = Task.all
  end

end
