class SessionsController < ApplicationController
  def index
  end
  def login
  end
  def auth_user
    @user_name = params[:userName]
    @password = params[:password]
    if @user_name == "Sugu"
      @true_passward = "nix@1701"
    else
      @true_passward = "iampro@123"
    end
    if @password != @true_passward
      error = 'Invalid password ' + @user_name + "!!"
      redirect_to login_path(error: error); return;
    end 
    redirect_to home_path(user_name: @user_name); return;
  end
  def home

  end  
end
