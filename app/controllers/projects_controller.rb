class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project].permit(:title, :description, :time_frame))
    @project.user_id = current_user.id
    @project.status = "In Progress"
    
    @project.user = current_user
 
    if @project.save
      @project.user.update_attribute(:rewards, @project.user.rewards)
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
   
   #def average_rating
	#ratings.sum(:rating_score)/ratings.size
   #end
end
