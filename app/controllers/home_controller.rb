class HomeController < ApplicationController

  def index
    @locations = Location.all
    @todos = Todo.all
  end

end
