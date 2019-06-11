class KitchensController < ApplicationController
    def show
        @kitchens = Kitchen.all
        unless @kitchens.empty?
            render json: @kitchens 
        end        
    end
end
