class ServicesController < ApplicationController
  #before_action :set_article, only: [:discoZona, :discoMusica, :contentManager]

  def index
    @publications = Publication.all
    #@publications = Publication.where("important = 't'")
    if params[:important]
      @publications = @publications.where(:important => (params[:important] == 't'))
    end

    @titulo = "Las más destacadas"
  end

  def listPublication
    @publications = Publication.all

    if params[:title]
      @publications = @publications.where(:title => (params[:title] == 't'))
    end

  end

  def listar_servicio
    @publications = Publication.All
    render :json => @publications
  end

  def discoZona
    @titulo = "Titulo"
  end

  def discoMusica
    @titulo = "Titulo"
  end

  def contentManager
    @titulo = "Titulo"
  end

  #visualiza el evento
  def show
    @titulo = "Titulo"
  end

  def showUbication
    @titulo = "Titulo"
    @latitude = '-12.176631545874304'
    @longitude = '-76.92365215000001'
  end

  def detalle
    @titulo = "Titulo"
  end

end
