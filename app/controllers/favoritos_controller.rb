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
    #:usuario_id mas é login que vem
    @usuario = Usuario.find_by_login(params[:usuario_id])
    @favorito = Favorito.new
    @favorito.usuario_id = @usuario.id
    
    @favorito.estabelecimento_id = params[:estabelecimento_id]
    @estabelecimento = Estabelecimento.find(params[:estabelecimento_id])   
    
    @usuario.estabelecimentos.push(@estabelecimento)

    respond_to do |format|
      if @usuario.save
        format.html  { redirect_to :action => :index , :usuario_id => @usuario.id, :notice => 'O Favorito foi adicionado.' }
        format.json  { render :json => @favorito, :status => :created, :location => @favorito }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @favorito.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    #:usuario_id mas é login que vem
    @usuario = Usuario.find_by_login(params[:usuario_id])
    @favorito = Favorito.find_all_by_usuario_id_and_estabelecimento_id(@usuario.id,params[:estabelecimento_id]).first
    Favorito.delete_all(["usuario_id = ? AND estabelecimento_id = ?",@favorito.usuario_id,@favorito.estabelecimento_id])

    respond_to do |format|
      format.html { redirect_to usuario_favoritos_url(@usuario) }
      format.json { head :no_content }
    end
  end

  def index
    #:usuario_id mas é login que vem
    @usuario = Usuario.find_by_login(params[:usuario_id])
    @favoritos = Favorito.find_all_by_usuario_id(@usuario.id)
    @lista = Array.new
    @favoritos.each do |favorito|
      favorito.estabelecimento.favorito = true
      @lista.push(favorito.estabelecimento)
    end

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @lista, :include => {:precos =>{:only => :valor, :include =>:produto } , 
      :caracteristicas => {:only => [:nome, :id]} } }
    end
  end
  
  def show
    
  end

end
