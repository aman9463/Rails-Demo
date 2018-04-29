class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
# before_filter :authenticate_user!
  #   def authenticate_user!(options={})
  #   if user_signed_in?
  #     super(options)
  #   else
  #     redirect_to root_path, alert: 'Page Not Found' ## if you want render 404 page
  #     ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
  #   end
  # end
end
