class ProdutosController < ApplicationController
  def new
    @produto = Produto.new

    respond_to do |format|
      format.html  # new.html.erb
      format.json  { render :json => @produto }
    end
  end

  def create
    @produto = Produto.new(params[:produto])

    respond_to do |format|
      if @produto.save
        format.html  { redirect_to(@produto, :notice => 'O Produto foi criado.') }
        format.json  { render :json => @produto, :status => :created, :location => @produto }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @produto = Produto.find(params[:id])

    respond_to do |format|
      if @produto.update_attributes(params[:produto])
        format.html  { redirect_to(@produto, :notice => 'O Produto foi atualizado.') }
        format.json  { head :no_content }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => @produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @produto = Produto.find(params[:id])
  end

  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy

    respond_to do |format|
      format.html { redirect_to produtos_url }
      format.json { head :no_content }
    end
  end

  def index
    @lista = Produto.all

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @lista }
    end
  end

  def show
    @produto = Produto.find(params[:id])

    respond_to do |format|
      format.html  # show.html.erb
      format.json  { render :json => @produto }
    end

  end
end
