class AddressesController < ApplicationController
  def new

  end


  def create

  @address = Article.new(params.require(:adddress).permit(:street_address, :name, :city, :state, :zip))
   
    @address.save
    redirect_to @address
  end
end
