class UsersController < ApplicationController
  def show
     @user = User.find(params:[id])
    @book = @user.book
  end

  def index
  end

  def edit
    @user = User.find(params:[id])
  end
  
  def updated
    @user = User.find(params:[id])
    @user.update(user_params)
    redirect_to user_path(user.id)
  end
end
