class ExperienciaController < ApplicationController
  # GET /experiencia
  # GET /experiencia.json
  def index
    @experiencia = Experiencium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @experiencia }
    end
  end

  # GET /experiencia/1
  # GET /experiencia/1.json
  def show
    @experiencium = Experiencium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @experiencium }
    end
  end

  # GET /experiencia/new
  # GET /experiencia/new.json
  def new
    @experiencium = Experiencium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @experiencium }
    end
  end

  # GET /experiencia/1/edit
  def edit
    @experiencium = Experiencium.find(params[:id])
  end

  # POST /experiencia
  # POST /experiencia.json
  def create
    @experiencium = Experiencium.new(params[:experiencium])

    respond_to do |format|
      if @experiencium.save
        format.html { redirect_to @experiencium, notice: 'Experiencium was successfully created.' }
        format.json { render json: @experiencium, status: :created, location: @experiencium }
      else
        format.html { render action: "new" }
        format.json { render json: @experiencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /experiencia/1
  # PUT /experiencia/1.json
  def update
    @experiencium = Experiencium.find(params[:id])

    respond_to do |format|
      if @experiencium.update_attributes(params[:experiencium])
        format.html { redirect_to @experiencium, notice: 'Experiencium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @experiencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiencia/1
  # DELETE /experiencia/1.json
  def destroy
    @experiencium = Experiencium.find(params[:id])
    @experiencium.destroy

    respond_to do |format|
      format.html { redirect_to experiencia_url }
      format.json { head :no_content }
    end
  end
end
