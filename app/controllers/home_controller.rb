class HomeController < ApplicationController
  def login

  end

  def record
    @product = Product.new

  end

  def create
    @record = Record.new(
      prod_name: params[:prod_name],
      date: params[:date],
      yield: params[:yield],
      def_total: params[:def_total]
    )
  
    if @record.save
      flash[:notice] = "製造記録登録が完了しました"
      redirect_to("/record")
    else
      render("record/record")
    end
  end

  def graph

  end


end
