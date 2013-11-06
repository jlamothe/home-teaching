class UsersController < ApplicationController
  before_filter :get_user

  def get_user
    @user = (params[:id]) ? User.find(params[:id]) : nil
  end

  def show
    raise CanCan::AccessDenied unless current_user.try(:id) == @user.try(:id)
    add_breadcrumb 'Profile', user_path(@user.id)
  end
end
