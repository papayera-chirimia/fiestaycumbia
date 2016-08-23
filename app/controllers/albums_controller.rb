class AlbumsController < ApplicationController
  # load_and_authorize_resource
  # before_action :authenticate_user!
    
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @albums = Album.all
    respond_with(@albums)
  end

  def show
    #respond_with(@album)
    #unless @album = Album.find(params[:id])
    #  redirect_to :back, :alert => "Acceso no permitido."
    #end
  end

  def new
    @album = Album.new
    respond_with(@album)
  end

  def edit
  end

  def create
    @album = Album.new(album_params)
    flash[:notice] = 'Imagen subida.' if @album.save
    respond_with(@album)
  end

  def update
    flash[:notice] = 'Imagen actualizada.' if @album.update(album_params)
    respond_with(@album)
  end

  def destroy
    @album.destroy
    respond_with(@album)
  end

  def image
    
  end

  private
    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album).permit(:image, :descripcion)
    end
end
