class CatRentalRequestsController < ApplicationController

  def new
    @cats = Cat.all
    render :new
  end

  def create
    @rent = CatRentalRequest.new(request_params)
    if @rent.save
      redirect_to cat_url(request_params[:cat_id])
    else
      render :new
    end
  end

  private

  def request_params
    params.require(:rent).permit(:cat_id, :start_date, :end_date)
  end
end
