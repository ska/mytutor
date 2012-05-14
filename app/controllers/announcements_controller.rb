class AnnouncementsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]
  before_filter :authorized_user, :only => [ :destroy, :edit, :update ]
  ## Nessun filtro
  def index
   @announcements = Announcement.all 
  end
  
  def show
    @announcement = Announcement.find(params[:id])
  end
  
  
  
  ## Filtro loggato
  def new
    @announcement = Announcement.new
  end
  
  def create     
    @announcement = current_user.announcements.build(params[:announcement])
    if @announcement.save
      redirect_to root_path, :flash => { :success => "Annuncio salvato"}
    else
      render 'new'
    end
  end
  
  
  ## filtro proprietario o admin user
  def edit
    # la variabile @announcement viene prodotta da authorized user
  end
  
  def destroy
    @announcement.destroy
    redirect_to announcements_path, :flash => { :success => "Annuncio eliminato"}
  end
  
  def update
    if @announcement.update_attributes(params[:announcement])
      redirect_to announcement_path(@announcement), :flash => { :success => "Modifica avvenuta con successo"}
    else
      render 'edit'
    end
  end
  
  
  
  
  
  
  
  private
    def authorized_user
      if current_user.admin?
        #sono admin posso cancellare/modificare
        @announcement = Announcement.find_by_id(params[:id])
      else
        #Non sono admin, devo verificare se sono il proprietario
        @announcement = current_user.announcements.find_by_id(params[:id])
        if @announcement.nil?
          redirect_to announcements_path, :flash => { :notice => "Ma cosa stai facendo? Non sei autorizzato."}
        end
      end     
    end
  
  
  
end
