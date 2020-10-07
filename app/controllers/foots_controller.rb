class FootsController < ApplicationController
  
  def index
    
  end

  def new
    @foot = Foot.new
  end

  def create
    Foot.create(foot_params)
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

  private
  def foot_params
    params.require(:foot).permit(:nickname).merge(user_id: current_user.id)
  end
end
