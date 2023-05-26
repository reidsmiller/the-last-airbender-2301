class WelcomeController < ApplicationController
  def index
    @facade = NationFacade.new(params[:nation])
  end
end