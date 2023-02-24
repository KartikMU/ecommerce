class AdminController < ApplicationController
  def login
    if request.post?
      if params[:username] == "Kartik" && params[:password] == "msk123"
        session[:admin] = "admin"
        redirect_to stores_url
      else
        flash[:notice] = "Invalid Username/Password: Try Again"
        render :action=> :login 
      end   
    end
  end

  def logout
    session.delete(:admin)
    flash[:notice] = "Logged Out"
    redirect_to :action=> :login
  end  
  
end
