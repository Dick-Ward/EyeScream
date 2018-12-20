class FlavorsController < ApplicationController

  def index
    @flavors = Flavor.all
  end

  def new
    @flavor = Flavor.new
    @trucks = Truck.all
  end

  def create
    @trucks = Truck.all
    @flavor = Flavor.create(flava_params)
    if @flavor.valid?
      redirect_to @flavor
    else
      @errors = @flavor.errors.full_messages
      render :new
    end
  end

  def show
    @flavor = Flavor.find(params[:id])
  end

  private

  def flava_params
    params.require(:flavor).permit(:name, :gumballs, :color, :organic, :poison, :truck_id)
  end

end
