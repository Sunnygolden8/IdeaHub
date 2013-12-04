class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end
  
  def edit
    super
  end
  
  def user_registration_path_for(resource)
    if @user.save
      flash[:success] = "Welcome!"
      redirect_to root_url, notice: 'User was successfully created.'
    else
      render 'new'
    end 
  end

end
