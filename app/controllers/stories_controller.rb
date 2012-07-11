
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
  
  def latest
    @stories = Story.latest
  end
  
  def show
    @story = Story.find(params[:id])  
  end
  
  
  def edit
    @story = Story.find(params[:id])
  end
  
  def update
    @story = Story.find(params[:id])
    respond_to do |format|
      if @story.update_attributes(params[:story])  
        format.html { redirect_to root_path, notice: 'Successfully updated course'}
      else
        format.html { render 'edit' }
      end
    end
  end
  
  def destroy
    Story.find(params[:id]).destroy
    redirect_to root_path, notice: 'Successfully removed course'
    
  end
  
  
end
