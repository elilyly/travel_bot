class SightsController < ApplicationController
  
  def index
    @sights = Sight.all
    @users = User.all
  end

  def new
    @sight = Sight.new
  end

  def create
    @sight = Sight.new(sight_params)
    @sight.save
    redirect_to new_vacation_path
  end

  def show
    @sight = Sight.find(params[:id])
  end

  def edit
    @sight = Sight.find(params[:id])
  end

  def update
    @sight = Sight.find(params[:id])
    @sight.update(sight_params)
    redirect_to sight_path(@sight)
  end

  def destroy
    @sight = Sight.find(params[:id])
    @sight.delete
    redirect_to vacations_path
  end

  private

  def sight_params
    params.require(:sight).permit(:city, :name)
  end

end
