class StocksController < ApplicationController

  def search
    if params[:stock].present?
      @stock =  Stock.new_from_lookup(params[:stock])
      if @stock
        render "users/my_portofolio "
      else
        flash[:danger] = "Yu have entered an incorrect symbol"
        redirect_to my_portofolio_path
      end
    else
      flash[:danger] = "You have entered an empty string"
      redirect_to my_portofolio_path
    end

  end
end