class AdvertisementsController < ApplicationController
  def index
    @ads = Advertisement.all
  end

  def show
    @ad = Advertisement.find(params[:id])
  end

  def new
    @ad = Advertisement.new
  end

  def create
    @ad = Advertisement.new
    @ad.title = params[:advertisement][:title]
    @ad.body = params[:advertisement][:body]
    @ad.price = params[:advertisement][:price]

    if @ad.save
      flash[:notice] = "Your ad has been saved"
      redirect_to @ad
    else
      flash[:error] = "There was an error, Ad not saved"
      render :new
    end
  end
end
