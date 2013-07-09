class FavoritosController < ApplicationController
  def new
    @usuario = Usuario.find(params[:usuario_id])
    @favorito = Favorito.new

    respond_to do |format|
      format.html  # new.html.erb
      format.json  { render :json => @favorito }
    end
  end

  def create
    @favorito = Favorito.new(params[:favorito])

    respond_to do |format|
      if @favorito.save
        format.html  { redirect_to(@favorito, :notice => 'O Favorito foi adicionado.') }
        format.json  { render :json => @favorito, :status => :created, :location => @favorito }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @favorito.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @usuario = Usuario.find(params[:usuario_id])
    @favorito = Favorito.find_all_by_usuario_id_and_estabelecimento_id(@usuario.id,params[:id]).first
    Favorito.delete_all(["usuario_id = ? AND estabelecimento_id = ?",@favorito.usuario_id,@favorito.estabelecimento_id])

    respond_to do |format|
      format.html { redirect_to usuario_favoritos_url(@usuario) }
      format.json { head :no_content }
    end
  end

  def index
    @usuario = Usuario.find(params[:usuario_id])
    @lista = Favorito.find_all_by_usuario_id(@usuario.id)

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @lista }
    end
  end
  
  def show
    
  end

end
