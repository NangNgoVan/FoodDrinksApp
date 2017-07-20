class StoresController < ApplicationController
  def new
    @store = Store.new
  end

  def show
    @store = Store.find_by id: params[:id]
  end

  def create
  	@store = current_user.build_store store_params
  	if @store.save
  	  flash[:info] = "Da tao cua hang thanh cong"
      redirect_to current_user
  	else
      render :new
  	end
  end

  private

  def store_params
    params.require(:store).permit :name, :address, :phone
  end
end
