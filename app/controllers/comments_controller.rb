class CommentsController < ApplicationController
before_action :authenticate_user!

def create
	@project = Project.find(params[:project_id])
    @comment = @project.comments.create(params[:comment].permit(:commenter, :body))
    @comment.user = current_user
    @comment.save
    
    respond_to do |format|
      format.js 
      format.html { 
        redirect_to project_path(@project) 
      }
end

def destroy
	 @project = Project.find(params[:project_id])
    @comment = @project.comments.find(params[:id])
    @comment.destroy
    
    respond_to do |format|
      format.js
      format.html { 
        redirect_to project_path(@project)
      }
<<<<<<< HEAD
    end
=======
>>>>>>> 33d82b381f4ba8f0bb6d65c84c2c6661e3bd943f
end

end
