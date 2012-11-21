class SitiosController < ApplicationController
  # GET /sitios
  # GET /sitios.json
  def index
    @sitios = Sitio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sitios }
    end
  end

  # GET /sitios/1
  # GET /sitios/1.json
  def show
    @sitio = Sitio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sitio }
    end
  end

  # GET /sitios/new
  # GET /sitios/new.json
  def new
    @sitio = Sitio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sitio }
    end
  end

  # GET /sitios/1/edit
  def edit
    @sitio = Sitio.find(params[:id])
  end

  # POST /sitios
  # POST /sitios.json
  def create
    @sitio = Sitio.new(params[:sitio])

    respond_to do |format|
      if @sitio.save
        format.html { redirect_to @sitio, notice: 'Sitio was successfully created.' }
        format.json { render json: @sitio, status: :created, location: @sitio }
      else
        format.html { render action: "new" }
        format.json { render json: @sitio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sitios/1
  # PUT /sitios/1.json
  def update
    @sitio = Sitio.find(params[:id])

    respond_to do |format|
      if @sitio.update_attributes(params[:sitio])
        format.html { redirect_to @sitio, notice: 'Sitio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sitio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sitios/1
  # DELETE /sitios/1.json
  def destroy
    @sitio = Sitio.find(params[:id])
    @sitio.destroy

    respond_to do |format|
      format.html { redirect_to sitios_url }
      format.json { head :no_content }
    end
  end
end
