class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:object])
    if @user.save
      # flash[:success] = "Object successfully created"
      redirect_to @user
    else
      # flash[:error] = "Something went wrong"
      render "new", status: unprocessible_entity
    end
  end
end
