
class StoriesController < ApplicationController
  def new
    @story = Story.new
  end
  
  def create
    @story = Story.new(params[:story])
    respond_to do |format|
      if @story.save
        format.html { redirect_to root_path, 
          notice: 'Successfully submitted course'}
      else
        format.html { render action: 'new' }
      end
    end
  end
end
