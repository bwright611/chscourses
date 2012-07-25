module StoriesHelper

  def story_link(story)
    story.url.blank? ? story_path(story) : story.url
  end
  
  def story_link_url(story)
    story.url.blank? ? story_url(story) : story.url
  end
  
end
