class PagesController < ApplicationController
  def hi
    @name = params[:name]
  end

  def home
  end
end
