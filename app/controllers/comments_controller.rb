
class CommentsController < ApplicationController
  
  def new 
    @story = Story.find(params[:story_id])
    @comment = @story.comments.build
  end
  
  def create
    @story = Story.find(params[:story_id])
    @comment = @story.comments.build(params[:comment])
    respond_to do |format|
      if @comment.save
        format.html { redirect_to root_path, notice: 'Successfully submitted comment'}
      else
        format.html { render 'new' }
      end
    end
  end
  
end
