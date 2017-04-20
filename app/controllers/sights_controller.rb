class SightsController < ApplicationController
  def index
    @sights = Sight.all
  end

  def new
    @sight = Sight.new
    # how should we link sights to trips?
    # Trips only have sight_id's ; how do we print out the name
  end

  def create
    @sight = Sight.new(sight_params)

    @sight.save
    redirect_to sight_path(@sight)
  end

  def show
    @sight = Sight.find(params[:id])
  end

  private

  def sight_params
    params.require(:sight).permit(:city, :name)
  end

end
