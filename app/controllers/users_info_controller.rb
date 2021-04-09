class UsersInfoController < ApplicationController

  
  def index
    @users_info = UserInfo.all
  end

  def show
    @user_info = UserInfo.find(params[:id])
  end

  def new
    @user_info = UserInfo.new
  end

  def create
    @user_info = UserInfo.new(params[:first_name, :last_name, :age, :gender, :address, :phone_number, :previous_illness, :doctor])
    if @user_info.save
      flash[:success] = "Object successfully created"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end
  
  private

  def users_info_params
    params.require(:user_info).permit(:first_name, :last_name, :age, :gender, :address, :phone_number, :previous_illness,:doctor)
  end
end
