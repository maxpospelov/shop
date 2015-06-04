class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound do |exception|
   render file: 'public/404.html'
  end

  def render_error(status)
    respond_to do |format|
      format.html { render 'error_' + status.to_s() + '.html', :status => status, :layout => 'errors'}
      format.all { render :nothing => true, :status => status }
    end
  end

end
