class RewardController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:user_id])
    @reward = @user.rewards.create(params[:reward].permit(:numbers))
    @reward.user = current_user
    @reward.save
    
    respond_to do |format|
      format.js 
      format.html { 
        redirect_to root_url, notice: 'Reward was successfully made.' 
      }
    end
  end
  
  private
    def reward_params
      params.require(:reward).permit(:numbers)
    end
end
