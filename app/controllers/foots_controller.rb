class FootsController < ApplicationController
  before_action :set_foot, only: [:edit, :update]

  def index
    @foots = Foot.all
  end

  def new
    @foot = Foot.new
  end

  def create
    @foot = Foot.new(foot_params)
    if @foot.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    if @foot.destroy
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @foot.update(foot_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def foot_params
    params.require(:foot).permit(:ateam, :ascore_id, :bteam, :bscore_id, images: []).merge(user_id: current_user.id)
  end

  def set_message
    @foot = Foot.find(params[:id])
  end
end
