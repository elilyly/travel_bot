class VacationsController < ApplicationController
  def index
    @upcoming_vacations = current_user.vacations.where("end_date >=?", Date.today)
    @past_vacations = current_user.vacations.where("end_date <=?", Date.today)
  end

  def show
    @vacation = Vacation.find(params[:id])
  end

  def new
    @vacation = Vacation.new
  end

  def create
    @user = User.find(session[:user_id])
    @vacation = Vacation.new(vacation_params)
    @vacation.user = @user
    if @vacation.valid?
      @vacation.save
      redirect_to vacation_path(@vacation)
    else
      render 'new'
    end
  end

  def edit
    @vacation = Vacation.find(params[:id])
  end

  def update
    @vacation = Vacation.find(params[:id])
    @vacation.update(vacation_params)
    redirect_to vacation_path(@vacation)
  end

  def destroy
    @vacation = Vacation.find(params[:id, :sight_id])
    @vacation.delete
    redirect_to vacations_path
  end

  private

  def vacation_params
    params.require(:vacation).permit(:name, :sight_id, :user_id, :start_date, :end_date)
  end
end
