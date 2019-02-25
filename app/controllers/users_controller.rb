class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # debugger # (Rails server shows a byebug prompt)
  end

  def new
    @user = User.new
  end
end
