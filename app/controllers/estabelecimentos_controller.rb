class EstabelecimentosController < ApplicationController
  include EstabelecimentosHelper
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
      format.json  { render :json => @lista, :include => {:precos =>{:only => :valor, :include =>:produto } , 
      :caracteristicas => {:only => [:nome, :id]} } }
    end
  end

  def show
    @estabelecimento = Estabelecimento.find(params[:id])

    respond_to do |format|
      format.html  # show.html.erb
      format.json  { render :json => @estabelecimento, :only => [:id, :endereco, :nome, :gostei, :telefone, :latitude, :longitude],
		  :include => {:precos =>{:only => :valor, :include => {:produto =>{:only => :nome}} }, :caracteristicas => {:only => [:nome]}  }  }
    end

  end

#Ex por URL
#http://localhost:3000/estabelecimentos/proximos?raio=100&latitude=-22.903811&longitude=-43.104175
#http://maparadar.com/forum/viewtopic.php?f=145&t=5181
#gmaps esta em graus decimais
#https://support.google.com/maps/answer/2533464?hl=pt
  def proximos
    @lista = Array.new
    estabelecimentos = Estabelecimento.all
    raio = params[:raio]
    if (raio == nil)
      raio = 1000
    end
    estabelecimentos.each do |estab|
      dist = distancia(params[:latitude].to_f, params[:longitude].to_f,estab.latitude, estab.longitude)
      if (dist.to_f <= raio.to_f && dist.to_f != 0.0)
        @lista.push(estab)
      end
    end
    
    respond_to do |format|
      format.html  # proximos.html.erb
      format.json  { render :json => @lista, :include => {:precos =>{:only => :valor, :include =>:produto } , 
      :caracteristicas => {:only => [:nome, :id]} } }
    end
    
  end
  
#Ex por URL
#http://localhost:3000/estabelecimentos/busca?caracteristica=31
#31 é pizzaria
  def busca
    if (params[:tipo] == "nome")
      @lista = Estabelecimento.find(:all, :include=>:caracteristicas, :conditions => ['LOWER(estabelecimentos.nome) LIKE ? ','%'+params[:nome].downcase+'%'])
    else 
      if (params[:tipo] == "caracteristica")
        @lista = Estabelecimento.find(:all, :include=>:caracteristicas, :conditions => ['caracteristicas.id = ' + params[:caracteristica]])
      end
    end
    respond_to do |format|
      format.html  # busca.html.erb
      format.json  { render :json => @lista, :include => {:precos =>{:only => :valor, :include =>:produto } , 
      :caracteristicas => {:only => [:nome, :id]} } }
    end
  end

end
