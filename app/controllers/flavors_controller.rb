class FlavorsController < ApplicationController

  def index
    @flavors = Flavor.all
  end

  def new
    @flavor = Flavor.new
    @trucks = Truck.all
  end

  def create
    @flavor = Flavor.create(flava_params)
    if @flavor.valid?
      redirect_to @flavor
    else
      # we get all trucks here because the new page requires it.
      @trucks = Truck.all
      # We could use flash here if we wanted as well
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
