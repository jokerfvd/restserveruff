class UsuariosController < ApplicationController
  def new
    @usuario = Usuario.new

    respond_to do |format|
      format.html  # new.html.erb
      format.json  { render :json => @usuario }
    end
  end

  def create
    @usuario = Usuario.new(params[:usuario])

    respond_to do |format|
      if @usuario.save
        format.html  { redirect_to(@usuario, :notice => 'O Usuario foi criado.') }
        format.json  { render :json => @usuario, :status => :created, :location => @usuario }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @usuario = Usuario.find(params[:id])

    respond_to do |format|
      if @usuario.update_attributes(params[:usuario])
        format.html  { redirect_to(@usuario, :notice => 'O Usuario foi atualizado.') }
        format.json  { head :no_content }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => @usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy

    respond_to do |format|
      format.html { redirect_to usuarios_url }
      format.json { head :no_content }
    end
  end

  def index
    @lista = Usuario.all

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @lista }
    end
  end

  def show
    @usuario = Usuario.find(params[:id])

    respond_to do |format|
      format.html  # show.html.erb
      format.json  { render :json => @usuario, :include => :estabelecimentos }
    end
  end
  
end
