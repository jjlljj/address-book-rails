class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def new
  end

  def show
    @address = Address.find(params[:id])
  end

  def create
    @address = Address.new(params.require(:address).permit(:street_address, :name, :city, :state, :zip))
   
    @address.save
    redirect_to @address
  end
end
