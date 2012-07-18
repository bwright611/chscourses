
class ProfileController < ApplicationController

  def show
    @profile = GravatarProfile.new(current_user.email)
  end

end
