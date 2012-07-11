require 'spec_helper'

describe StoriesHelper do
  describe 'Story Link' do 
    context 'with url' do
      let(:story) { Story.create(title: 'foo', url: 'http://foo.com')}
      
      it 'should return url' do
        story_link(story).should == 'http://foo.com'
      end
    end
    context 'with body' do
      let(:story) { Story.create(title: 'foo', body: 'foobarbaz')}
      
      it 'should return body' do
        story_link(story).should == '/stories/1'
      end
    end

  end
end
