class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout 'sidebar'

  def background_image
    @background_image ||= view_context.image_path("backgrounds/#{%w(m83.jpg fuji.jpg faster.jpg m106.jpg).sample}"); @background_image
  end
  helper_method :background_image
end
