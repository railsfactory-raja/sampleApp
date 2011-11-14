class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from Exception, :with => :render_error
  rescue_from ActiveRecord::RecordNotFound, :with => :render_not_found
  rescue_from ActionController::RoutingError, :with => :render_not_found
  rescue_from ActionController::UnknownController, :with => :render_not_found
  rescue_from ActionController::UnknownAction, :with => :render_not_found
  
  private
  def render_not_found(exception)
    log_error(exception)
    render :file => "#{RAILS_ROOT}/public/404.html", :layout => false, :status => 404
  end

  def render_error(exception)
    log_error(exception)
    render :file => "#{RAILS_ROOT}/public/500.html", :layout => false, :status => 500
  end
  
end
