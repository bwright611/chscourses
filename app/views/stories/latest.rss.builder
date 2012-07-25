xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "ChsCodes"
    xml.description "Vote for your favorite courses"
    xml.link stories_url

    @stories.each do |story|
      xml.item do
        xml.title story.title
        xml.description "up #{story.up || 0} down #{story.down || 0}"
        xml.pubDate story.created_at.to_s(:rfc822)
        xml.link story_link(story)
        xml.guid story_link(story)
      end
    end
  end
end