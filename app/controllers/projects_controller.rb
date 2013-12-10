class ProjectsController < ApplicationController

before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project].permit(:title, :description, :time_frame))
    @project.user = current_user
    @project.status = "In Progress"

    if @project.save
      @project.user.update_attribute("rewards", @project.user.rewards + 1)
      #@project.user.incrementing
      redirect_to @project, notice: "You got points for creating a project!"
    else
      render 'new'
    end 
   end

 def archive
	@project = Project.all
   end
   
   def show
     @project = Project.find(params[:id])
   end
   
   def index
    	@projects = Project.order('created_at DESC').limit(5).all
		
		#@rating = Rating.where(project_id: @project.id,userid: @current_user.id).first 
		#unless
		#@rating @rating = Rating.create(project_id: @project.id,user_id: @current_user.id, rating_score:0)
		#end
   end
   
   def edit
     @project = Project.find(params[:id])
   end
   
   def update
     @project = Project.find(params[:id])
 
     if @project.update(params[:post].permit(:title, :text))
       redirect_to @project
     else
       render 'edit'
     end
   end
   
   def add_member
     @project = Project.find(params[:id])
     @user = User.find(current_user)
        Member.create({project_id: @project.id, user_id: @user.id, name: (@user.first_name + " "+@user.last_name)})
    redirect_to @project
    end
   
    def remove_member
      @project = Project.find(params[:id])
      @user = User.find(current_user)
      @member = Member.where(:user_id => @user.id).first
      @project.members.delete(@member)

       redirect_to @project
     end
   
   #def average_rating
	#ratings.sum(:rating_score)/ratings.size
   #end
end
