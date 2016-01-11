class ProfileController < ApplicationController

  def create_image
    current_user.update(profile_params)
    redirect_to page_profile_path
  rescue ActionController::ParameterMissing
    redirect_to page_profile_path, notice: "Please select an image!"
  end



private

def profile_params
    params.require(:profile).permit(:avatar)
  end

end
