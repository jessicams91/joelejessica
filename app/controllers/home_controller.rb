class HomeController < ApplicationController

  def index
    @list = Guest.all.pluck(:name)
  end
end
