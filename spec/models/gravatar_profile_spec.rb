require 'spec_helper'

describe GravatarProfile do
  subject { GravatarProfile.new('tom@jackhq.com') }
  it 'should be true' do
    subject.should be_true
  end
  
  it '#name should equal tjackhq' do
    subject.name.should == 'tjackhq'
  end
  
end
