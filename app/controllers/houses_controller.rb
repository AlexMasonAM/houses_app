class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def create
    @house = House.new(params.require(:house).permit(:latitude, :longitude))

    if @house.save
      render json: @house
    else
      render plain: "errors"
    end

  end
end