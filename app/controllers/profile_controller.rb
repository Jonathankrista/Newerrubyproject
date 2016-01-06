class ProfileController < ApplicationController

  def create_image
    current_user.update(profile_params)
    redirect_to page_profile_path
  end



private

def profile_params
    params.require(:profile).permit(:avatar)
  end

end
