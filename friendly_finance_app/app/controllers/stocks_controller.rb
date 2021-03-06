class StocksController < ApplicationController

  def search
    if params[:stock].present?
      @stock = Stock.new_from_lookup(params[:stock])
      if @stock
        render 'users/my_portfolio'
      else
        flash[:danger] = "Nothing found for what was entered"
        redirect_to my_portfolio_path
      end
    else
      flash[:danger] = "Nothing entered within the search"
      redirect_to my_portfolio_path
    end
      #to see the object render json: @stock
  end

end
