class ItemsController < ApplicationController
  skip_before_action :protect_pages, only: [:index, :show]
  

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    authorize! Item.find(params[:id])
  end

  def update
    authorize! Item.find(params[:id])
    if item.update(item_params)
      redirect_to items_path
    else
      render :edit
    end
  end

  def destroy
    authorize! item
  
    item.destroy

    redirect_to items_path
  end

  private
    def item_params
      params.require(:item).permit(:name, :description, :category, :price, :organization_id)
    end

    def item
      @item = Item.find(params[:item_id])
    end
end
