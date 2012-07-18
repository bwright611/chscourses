class GravatarProfile
  attr_accessor :name, :photo, :url
  def initialize(email)
    email_hash = Digest::MD5.hexdigest(email)
    json = RestClient.get("http://www.gravatar.com/#{email_hash}.json")
    full_profile = JSON.parse(json)
    first_entry = full_profile['entry'].first
    @name, @photo, @url = first_entry['displayName'], first_entry['photos'].first['value'], first_entry['profileUrl']
  end
  
end