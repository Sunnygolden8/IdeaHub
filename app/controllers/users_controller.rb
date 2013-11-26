class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user].permit(:first_name, :last_name, :email, :password))
 
    if @user.save
      redirect_to @user
    else
      render 'new'
    end 
   end
   
   def index
     @users = User.all
   end
   
   def find
     @user = User.find_by :email, :password
     redirect_to posts_path
   end
   
   def show
     @users=User.all
     redirect_to users_path
   end
   
   def edit
     @user = User.find(params[:id])
   end
   
   def update
     @user = User.find(params[:id])
 
     if @user.update(params[:user].permit(:first_name, :last_name, :email, :password))
       redirect_to @user
     else
       render 'edit'
     end
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
