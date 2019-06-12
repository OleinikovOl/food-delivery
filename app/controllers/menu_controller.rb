class MenuController < ApplicationController
  def sections
    @kitchen_id = params[:kitchen]
    
    if @kitchen_id.nil?
      @kitchen_id = Kitchen.where(default: true).select('id')
    end
    @sections = Section.where(kitchen_id: @kitchen_id)
    
    render json: @sections        
  end

  def itemsList
    @kitchen_id = params[:kitchen]
    @section_id = params[:section]
    
    if @kitchen_id.nil?
      @kitchen_id = Kitchen.where(default: true).select('id')
    end
    
    if @section_id.nil?
      @items = Item.where(kitchen_id: @kitchen_id)
    else
      @items = Item.where(kitchen_id: @kitchen_id, section_id: @section_id)
    end

    render json: @items
  end

  def item
    @item_id = params[:id]
    
    @item = Item.find_by(id: @item_id)
    
    render json: @item
  end

end
