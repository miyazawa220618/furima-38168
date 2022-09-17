class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :destroy]

  def index
    @items = Item.order("created_at DESC")
    @order = Order.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @order = if @item.order.present?
               true
             else
               false
             end
  end

  def edit
  end

  def update
    @item.item_image.attach(params[:item_image]) if @item.item_image.blank?
    if @item.update(item_params)
      redirect_to item_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :info, :price, :item_image, :category_id,                 
                                 :sales_status_id, :shipping_fee_status_id,
                                 :prefecture_id, :scheduled_delivery_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index if ((user_signed_in? && current_user.id == @item.user.id) == false) || @item.order.present?
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
