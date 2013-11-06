class UsersController < ApplicationController
  before_filter :get_user

  def get_user
    @user = (params[:id]) ? User.find(params[:id]) : nil
    raise CanCan::AccessDenied unless current_user.try(:id) == @user.try(:id)
  end

  def show
    add_breadcrumb 'Profile', user_path(@user.id)
  end

  def edit
    show
    add_breadcrumb 'Edit', edit_user_path(@user.id)
  end

  def update
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.save!
    render 'show'
  end
end
