class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :init

  def init
    @breadcrumbs = []
  end

  def add_breadcrumb(title, url)
    @breadcrumbs << { title: title, url: url }
  end
end
