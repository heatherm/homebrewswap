class SessionsController < ApplicationController
  skip_before_filter :require_login
  layout 'layouts/logged_out'

  def new
  end

  def create
    if @account = login(params[:email], params[:password])
      redirect_back_or_to beers_path
    else
      flash.now.alert = "Email or password is invalid"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
