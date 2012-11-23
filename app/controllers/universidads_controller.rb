class UniversidadsController < ApplicationController
  # GET /universidads
  # GET /universidads.json
  def index
    @universidads = Universidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @universidads }
    end
  end

  # GET /universidads/1
  # GET /universidads/1.json
  def show
    @universidad = Universidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @universidad }
    end
  end

  # GET /universidads/new
  # GET /universidads/new.json
  def new
    @universidad = Universidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @universidad }
    end
  end

  # GET /universidads/1/edit
  def edit
    @universidad = Universidad.find(params[:id])
  end

  # POST /universidads
  # POST /universidads.json
  def create
    @universidad = Universidad.new(params[:universidad])

    respond_to do |format|
      if @universidad.save
        format.html { redirect_to @universidad, notice: 'Universidad was successfully created.' }
        format.json { render json: @universidad, status: :created, location: @universidad }
      else
        format.html { render action: "new" }
        format.json { render json: @universidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /universidads/1
  # PUT /universidads/1.json
  def update
    @universidad = Universidad.find(params[:id])

    respond_to do |format|
      if @universidad.update_attributes(params[:universidad])
        format.html { redirect_to @universidad, notice: 'Universidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @universidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /universidads/1
  # DELETE /universidads/1.json
  def destroy
    @universidad = Universidad.find(params[:id])
    @universidad.destroy

    respond_to do |format|
      format.html { redirect_to universidads_url }
      format.json { head :no_content }
    end
  end
end
