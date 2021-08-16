class ApplicationController < ActionController::Base
 
   before_action :configure_permitted_parameters, if: :devise_controller?

   
   def after_sign_up_path_for(resource)
 	   edit_user_registration_path(resource)
   end

   def after_sign_in_path_for(resource)
 	   if resource.phone.blank? || resource.name.blank?
         edit_user_registration_path(resource)
 	   else
 	      super	
 	   end	
   end

   def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :profile_img, :address])
   end


end
