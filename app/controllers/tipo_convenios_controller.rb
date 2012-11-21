class TipoConveniosController < ApplicationController
  # GET /tipo_convenios
  # GET /tipo_convenios.json
  def index
    @tipo_convenios = TipoConvenio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_convenios }
    end
  end

  # GET /tipo_convenios/1
  # GET /tipo_convenios/1.json
  def show
    @tipo_convenio = TipoConvenio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_convenio }
    end
  end

  # GET /tipo_convenios/new
  # GET /tipo_convenios/new.json
  def new
    @tipo_convenio = TipoConvenio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_convenio }
    end
  end

  # GET /tipo_convenios/1/edit
  def edit
    @tipo_convenio = TipoConvenio.find(params[:id])
  end

  # POST /tipo_convenios
  # POST /tipo_convenios.json
  def create
    @tipo_convenio = TipoConvenio.new(params[:tipo_convenio])

    respond_to do |format|
      if @tipo_convenio.save
        format.html { redirect_to @tipo_convenio, notice: 'Tipo convenio was successfully created.' }
        format.json { render json: @tipo_convenio, status: :created, location: @tipo_convenio }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_convenio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_convenios/1
  # PUT /tipo_convenios/1.json
  def update
    @tipo_convenio = TipoConvenio.find(params[:id])

    respond_to do |format|
      if @tipo_convenio.update_attributes(params[:tipo_convenio])
        format.html { redirect_to @tipo_convenio, notice: 'Tipo convenio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_convenio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_convenios/1
  # DELETE /tipo_convenios/1.json
  def destroy
    @tipo_convenio = TipoConvenio.find(params[:id])
    @tipo_convenio.destroy

    respond_to do |format|
      format.html { redirect_to tipo_convenios_url }
      format.json { head :no_content }
    end
  end
end
