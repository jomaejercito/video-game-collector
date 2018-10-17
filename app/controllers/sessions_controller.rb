class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if params[:user][:email].empty? || params[:user][:password].empty?
      redirect_to login_path
    elsif @user && @user.try(:authenticate, params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_collections_path(@user)
    else
      redirect_to login_path
    end
  end

  def facebook
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.password = 'password'
    end
    @user.save
    session[:user_id] = @user.id
    redirect_to user_collections_path(@user)
  end



  def destroy
    session.destroy
    redirect_to root_path
  end


  private

  def auth
    request.env['omniauth.auth']
  end

end
