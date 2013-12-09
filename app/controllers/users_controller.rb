class UsersController < ApplicationController
  def new
      @user = User.new
      @users = User.all
  end

  def create
    #by adding permit, we allow title and text to be seen through the security feature.
    #@user = User.new(params[user_params]#.permit(:first_name, :last_name, :email, :password))
    #makes validation; if post is true it is redirected to post, else it stays in new form..
    
    @user = User.new(params.require(:user).permit(:first_name, :last_name, :email, :password))
                     
    if @user.save
      flash[:success] = "Welcome!"
      redirect_to root_url, notice: 'User was successfully created.'
    else
      render 'new'
    end
  end
 
 #link to show.html 
  def show

     @user = User.find( params[:id] )
  end
  
  def edit
    @user = User.find( params[:id] )
  end
  
  def update
    @user = User.find( params[:id] )
    if @user.update_attributes( user_params )
      redirect_to @user
    else
      render 'edit'
    end
    if params[:spendamt]
      respond_to do |format|
        if @user.spend(params[:spendamt].to_i)
          format.html { redirect_to @user, notice: 'You have spent #{params[:spendamt]} points.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
  end
  
  def index
     @users = User.all
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path 
  end
  
   
private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

end
