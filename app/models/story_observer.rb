class StoryObserver < ActiveRecord::Observer
  observe :story
  
  def after_save(story)
    puts 'Post me to Twitter'
    begin
      Twitter.update(story.title)
    rescue 
      Rails.logger.error '************************* Twitter Update Failed'
    end

    true

  end
  
end

