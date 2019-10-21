class Api::V1::StocksController < Api::ApiController

 #GET /api/v1/orders
  def index
    stocks = Stock.all
    # render :index
    render json: { success: true, stocks: stocks } 
    # orders.map{ |x| { id: x.id, products: x.order.count } }
  end

  # GET /api/v1/orders/id
  def show
    stock = Stock.find(params[:id])
    # render :show
    render json: { stock: stock }
  end
end
