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
    @product = Product.new
    @record_a = Record.where(prod_name: "Aricept")
    @record_b = Record.where(prod_name: "metycobal")
    @record_c = Record.where(prod_name: "myonal")
    @record_d = Record.where(prod_name: "detantol")
    @record_e = Record.where(prod_name: "Lenvima")

    @data = [
      {
        date: @record_a.pluck(:date),
        def_total: @record_a.pluck(:def_total)
      },
      {
        date: @record_b.pluck(:date),
        def_total: @record_b.pluck(:def_total)
      }
    ]
  end



end
