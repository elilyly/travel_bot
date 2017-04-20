class VacationsController < ApplicationController
  def index
    @vacations = Vacation.all
    # @vacations = Vacation.find(session[:user_id])
    # @user = User.find(session[:user_id])
    #@vacations = @user.vacations
  end

  def show
    @vacation = Vacation.find(params[:id])
  end

  def new
    @vacation = Vacation.new
    # @sights = Sight.all
  end

  def create
    @user = User.find(session[:user_id])
    @vacation = Vacation.new(vacation_params)
    @vacation.user = @user

    #@vacation = @user.vacations.build(vacation_params)
    if @vacation.valid?
      @vacation.save
      redirect_to vacation_path(@vacation)
    else
      render 'new'
    end
  end

  private

  def vacation_params
    params.require(:vacation).permit(:name, :sight_id, :user_id)
  end
end

#<!-- <%  f.collection_check_boxes(:sight_ids, Sight.all, :id, :name) %> -->
