require 'spec_helper'

describe Story do
  it 'is true' do
    subject.should be_true 
  end
  
  it 'is not valid' do
    subject.should_not be_valid
  end
  
  it 'requires url if no body' do
    subject.title = 'test'
    subject.url = 'http://foo.com'
    subject.body = nil
    subject.should be_valid
  end
  it 'requires body if no url' do
    subject.title = 'test'
    subject.url = nil
    subject.body = "Foo"
    subject.should be_valid
  end
  
  describe '#latest' do
    before do
      %w{ Foo Bar Baz }.each do |title|
        Story.create title: title, body: title
      end
    end
    it 'should return the last 50 stories' do
      Story.latest.first.title.should == 'Baz'
      Story.latest.last.title.should == 'Foo'
    end
  end
end