class WelcomeController < ApplicationController
  def show
    puts "$" * 60
    puts params[:id]
    puts "$" * 60
  end
end
