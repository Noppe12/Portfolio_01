class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    if resource_class == Member
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    elsif resource_class == Creator
      devise_parameter_sanitizer.permit(:sign_up, keys: [:penname])
    else
    end
  end

  def after_sign_up_path_for(resource)
   case resource
   when Admin
     admin_top_path
   when Creator
     private_top_path
   when Member
     topafter_path
   end
  end

  def after_sign_in_path_for(resource)
   case resource
   when Admin
     admin_top_path
   when Creator
     private_top_path
   when Member
     topafter_path
   end
  end

end
