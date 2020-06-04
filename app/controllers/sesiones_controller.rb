class SesionesController < ApplicationController
    skip_before_filter :verify_authenticity_token
    protect_from_forgery prepend: true, with: :exception
    skip_before_action :verify_authenticity_token
  def create
    cliente = Cliente.find_by_mail(params[:mail])
    if cliente && cliente.authenticate(params[:password])
      session[:user_id] = cliente.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def new
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
