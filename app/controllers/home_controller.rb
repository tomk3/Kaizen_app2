class HomeController < ApplicationController
  def login
  end

  def record
    @product = Product.new
    @record = Record.new
  end

  def create
    @record = Record.new(
      prod_name: params[:prod_name],
      date: params[:date],
      yield: params[:yield],
      def_total: params[:def_total]
    )

    if @record.save
      if params[:def_type].present?
        @defect = Defect.new(
          record_id: Record.all.last.id,
          date: Record.all.last.date,
          def_type: params[:def_type],
          def_count: params[:def_count]
          )
        flash[:notice] = "製造記録登録が完了しました"
        redirect_to("/record")
      end
    else
      render("record/record")
    end
  end

  def graph
    @product = Product.new
    @record = Record.all
    @record_a = Record.where(prod_name: "Aricept")
    @record_b = Record.where(prod_name: "metycobal")
    @record_c = Record.where(prod_name: "myonal")

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

  def graph_select
    @product = Product.new
    @record = Record.where(prod_name: params[:search])
    redirect_to("/graph_select")
  end

end
