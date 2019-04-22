class ProductsController < ApplicationController
  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def search
    @product = if params[:term]
      Product.where('name LIKE ? or brand LIKE ?',"%#{params[:term]}", "%#{params[:term]}")
    else
      Product.all
    end
  end


  private
  def product_params
    params.require(:product).permit(:name, :brand, :avgcost, :category, :releasedate, :description, :photo)
  end
end
