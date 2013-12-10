class SessionsController < Devise::SessionsController
  def new
    super
    @user.update_attribute(:rewards, @user.rewards + 1)
  end
end
