class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]


  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
  

    respond_to do |format|
      if @order.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render post_path }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allosw the white list through.
    def order_params
      params.require(:order).permit(:drink_id, :quantity, :post_id)
    end


end
