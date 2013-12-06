class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project].permit(:title, :description, :time_frame))
    @project.user_id = current_user.id
    @project.status = "In Progress"
 
    if @project.save
      redirect_to @project
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
end
