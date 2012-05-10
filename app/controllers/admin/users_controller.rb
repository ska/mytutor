class Admin::UsersController < ApplicationController

  def index
    @title = "Lista completa utenti"
    @users = User.all 
  end
  
end
