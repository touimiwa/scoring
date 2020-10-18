class FootsController < ApplicationController
  before_action :set_foot, only: [:edit, :update, :show]
  before_action :authenticate_user!, only: [:show]

  def index
    @foots = Foot.all.order('created_at DESC')
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
    redirect_to root_path if @foot.destroy
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

  def show
    @review = Review.new
  end

  private

  def foot_params
    params.require(:foot).permit(:ateam, :ascore_id, :bteam, :bscore_id, :one_member, :two_member, :three_member, :four_member, :five_member, :six_member, :seven_member, :eight_member, :nine_member, :ten_member, :eleven_member, :aone_member, :atwo_member, :athree_member, :afour_member, :afive_member, :asix_member, :aseven_member, :aeight_member, :anine_member, :aten_member, :aeleven_member, images: []).merge(user_id: current_user.id)
  end

  def set_foot
    @foot = Foot.find(params[:id])
  end
end
