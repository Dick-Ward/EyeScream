class TrucksController < ApplicationController

  def index
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
  end

  def toggle
    @truck = Truck.find(params[:id])


    # this is a much terser way of doing the commented out code from below
    @truck.update(front: !@truck.front)


    # if @truck.front == false
    #   @truck.update(front: true)
    # else
    #   @truck.update(front: false)
    # end


    redirect_to @truck
  end


end
