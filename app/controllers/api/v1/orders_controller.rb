class Api::V1::OrdersController < Api::ApiController

  # GET /api/v1/orders
  def index
    orders = Order.all
    # render :index
    render json: { success: true, orders: orders }
    # orders.map{ |x| { id: x.id, products: x.order.count } }
  end

  # GET /api/v1/orders/id
  def show
    order = Order.find(params[:id])
    # render :show
    render json: { order: order }
  end
end
