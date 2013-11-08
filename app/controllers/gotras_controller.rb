class GotrasController < ApplicationController
  # GET /gotras
  # GET /gotras.json
  def index
    @gotras = Gotra.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gotras }
    end
  end

  # GET /gotras/1
  # GET /gotras/1.json
  def show
    @gotra = Gotra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gotra }
    end
  end

  # GET /gotras/new
  # GET /gotras/new.json
  def new
    @gotra = Gotra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gotra }
    end
  end

  # GET /gotras/1/edit
  def edit
    @gotra = Gotra.find(params[:id])
  end

  # POST /gotras
  # POST /gotras.json
  def create
    @gotra = Gotra.new(params[:gotra])

    respond_to do |format|
      if @gotra.save
        format.html { redirect_to @gotra, notice: 'Gotra was successfully created.' }
        format.json { render json: @gotra, status: :created, location: @gotra }
      else
        format.html { render action: "new" }
        format.json { render json: @gotra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gotras/1
  # PUT /gotras/1.json
  def update
    @gotra = Gotra.find(params[:id])

    respond_to do |format|
      if @gotra.update_attributes(params[:gotra])
        format.html { redirect_to @gotra, notice: 'Gotra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gotra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gotras/1
  # DELETE /gotras/1.json
  def destroy
    @gotra = Gotra.find(params[:id])
    @gotra.destroy

    respond_to do |format|
      format.html { redirect_to gotras_url }
      format.json { head :no_content }
    end
  end
end
