class UsersController < ApplicationController
  before_filter :get_user

  def get_user
    @user = (params[:id]) ? User.find(params[:id]) : nil
  end

  def show
    @breadcrumbs << { title: 'Profile', url: user_path(@user.id) }
  end
end
