class EstabelecimentosController < ApplicationController
  def new
	@estabelecimento = Estabelecimento.new
 
	respond_to do |format|
		format.html  # new.html.erb
		format.json  { render :json => @estabelecimento }
	end
  end

  def create
	@estabelecimento = Estabelecimento.new(params[:estabelecimento])
 
	respond_to do |format|
		if @estabelecimento.save
		  format.html  { redirect_to(@estabelecimento, :notice => 'O estabelecimento foi criado.') }
		  format.json  { render :json => @estabelecimento, :status => :created, :location => @estabelecimento }
		else
		  format.html  { render :action => "new" }
		  format.json  { render :json => @estabelecimento.errors, :status => :unprocessable_entity }
		end
	end
  end

  def update
	@estabelecimento = Estabelecimento.find(params[:id])
 
	  respond_to do |format|
		if @estabelecimento.update_attributes(params[:estabelecimento])
		  format.html  { redirect_to(@estabelecimento, :notice => 'O estabelecimento foi atualizado.') }
		  format.json  { head :no_content }
		else
		  format.html  { render :action => "edit" }
		  format.json  { render :json => @estabelecimento.errors, :status => :unprocessable_entity }
		end
	  end
  end

  def edit
	@estabelecimento = Estabelecimento.find(params[:id])
  end

  def destroy
	@estabelecimento = Estabelecimento.find(params[:id])
	@estabelecimento.destroy
	 
	  respond_to do |format|
		format.html { redirect_to estabelecimentos_url }
		format.json { head :no_content }
	end
  end

  def index
	@lista = Estabelecimento.all
 
	respond_to do |format|
		format.html  # index.html.erb
		format.json  { render :json => @lista }
	end
  end

  def show
	@estabelecimento = Estabelecimento.find(params[:id])
 
	respond_to do |format|
		format.html  # show.html.erb
		format.json  { render :json => @estabelecimento, :only => [:id, :endereco, :nome, :rank, :telefone, :latitude, :longitude], 
		  :include => {:alimentos => {:only => [:nome, :tipo], :include => {:precos =>{:only =>:valor}}}  }  }
	end
  end
end
