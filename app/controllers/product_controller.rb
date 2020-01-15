class ProductController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(
      prod_name: params[:prod_name]
    )
    if @product.save
      flash[:notice] = "製品登録が完了しました"
      redirect_to("/product/new")
    else
      render("product/new")
    end
  end
end
