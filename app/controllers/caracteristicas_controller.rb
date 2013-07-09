class CaracteristicasController < ApplicationController
  def new
    @caracteristica = Caracteristica.new

    respond_to do |format|
      format.html  # new.html.erb
      format.json  { render :json => @caracteristica }
    end
  end

  def create
    @caracteristica = Caracteristica.new(params[:caracteristica])

    respond_to do |format|
      if @caracteristica.save
        format.html  { redirect_to(@caracteristica, :notice => 'O Caracteristica foi criada.') }
        format.json  { render :json => @caracteristica, :status => :created, :location => @caracteristica }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @caracteristica.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @caracteristica = Caracteristica.find(params[:id])

    respond_to do |format|
      if @caracteristica.update_attributes(params[:caracteristica])
        format.html  { redirect_to(@caracteristica, :notice => 'O Caracteristica foi atualizada.') }
        format.json  { head :no_content }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => @caracteristica.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @caracteristica = Caracteristica.find(params[:id])
  end

  def destroy
    @caracteristica = Caracteristica.find(params[:id])
    @caracteristica.destroy

    respond_to do |format|
      format.html { redirect_to caracteristicas_url }
      format.json { head :no_content }
    end
  end

  def index
    @lista = Caracteristica.all

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @lista }
    end
  end

  def show
    @caracteristica = Caracteristica.find(params[:id])

    respond_to do |format|
      format.html  # show.html.erb
      format.json  { render :json => @caracteristica }
    end

  end
end
