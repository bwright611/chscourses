module StoriesHelper

  def story_link(story)
    story.url.blank? ? story_path(story) : story.url
  end
  
end
