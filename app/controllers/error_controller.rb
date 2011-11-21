class ErrorController < ApplicationController
  
  def routingerror
     render :template => "error/404.html.erb", :status => 404
  end

end
