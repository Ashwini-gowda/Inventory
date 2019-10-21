class Api::V1::ProductsController < Api::ApiController

  def index
    products = Product.all
    render json: { success: true, poducts: products }
  end

  # GET /api/v1/products/id
  def show
    product = Product.find(params[:id])
    # render :show
    render json: { id: product.id, name: product.name, code: product.code, description: product.description, price: product.price } 
  end
end
