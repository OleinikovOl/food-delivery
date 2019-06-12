class KitchensController < ApplicationController
  def show
    @kitchens = Kitchen.all
    render json: @kitchens      
  end
end
