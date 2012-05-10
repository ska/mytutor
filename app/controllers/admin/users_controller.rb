class Admin::UsersController < ApplicationController
  before_filter :authenthicated_admin

  def index    
    @title = "Lista completa utenti"
    @users = User.all     
  end
  
  private
  def authenthicated_admin
    unless current_user.try(:admin?)
      redirect_to root_path, :flash => { :notice => "Non hai il permesso per accedere a quest'area"} 
    end
  end
  
  
  
end
