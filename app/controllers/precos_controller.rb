class PrecosController < ApplicationController
  def new
    @preco = Preco.new

    respond_to do |format|
      format.html  # new.html.erb
      format.json  { render :json => @preco }
    end
  end

  def create
    @preco = Preco.new(params[:preco])

    respond_to do |format|
      if @preco.save
        format.html  { redirect_to(@preco, :notice => 'O Preco foi criado.') }
        format.json  { render :json => @preco, :status => :created, :location => @preco }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @preco.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @preco = Preco.find(params[:id])

    respond_to do |format|
      if @preco.update_attributes(params[:preco])
        format.html  { redirect_to(@preco, :notice => 'O Preco foi atualizado.') }
        format.json  { head :no_content }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => @preco.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @preco = Preco.find(params[:id])
  end

  def destroy
    @preco = Preco.find(params[:id])
    @preco.destroy

    respond_to do |format|
      format.html { redirect_to precos_url }
      format.json { head :no_content }
    end
  end

  def index
    @lista = Preco.find(:all, :include=>[:estabelecimento, :produto])
    @lista.group_by(&:estabelecimento_id)

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @lista }
    end
  end

  def show
    @preco = Preco.find(params[:id])

    respond_to do |format|
      format.html  # show.html.erb
      format.json  { render :json => @preco }
    end

  end
end
