class TrucksController < ApplicationController

  def index
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
  end

  def toggle
    @truck = Truck.find(params[:id])
    @truck.update(front: !@truck.front)
    # if @truck.front == false
    #   @truck.update(front: true)
    # else
    #   @truck.update(front: false)
    # end
    redirect_to @truck
  end


end
