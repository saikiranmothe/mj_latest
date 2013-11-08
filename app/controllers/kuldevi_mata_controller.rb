class KuldeviMataController < ApplicationController
  # GET /kuldevi_mata
  # GET /kuldevi_mata.json
  def index
    @kuldevi_mata = KuldeviMatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kuldevi_mata }
    end
  end

  # GET /kuldevi_mata/1
  # GET /kuldevi_mata/1.json
  def show
    @kuldevi_matum = KuldeviMatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kuldevi_matum }
    end
  end

  # GET /kuldevi_mata/new
  # GET /kuldevi_mata/new.json
  def new
    @kuldevi_matum = KuldeviMatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kuldevi_matum }
    end
  end

  # GET /kuldevi_mata/1/edit
  def edit
    @kuldevi_matum = KuldeviMatum.find(params[:id])
  end

  # POST /kuldevi_mata
  # POST /kuldevi_mata.json
  def create
    @kuldevi_matum = KuldeviMatum.new(params[:kuldevi_matum])

    respond_to do |format|
      if @kuldevi_matum.save
        format.html { redirect_to @kuldevi_matum, notice: 'Kuldevi matum was successfully created.' }
        format.json { render json: @kuldevi_matum, status: :created, location: @kuldevi_matum }
      else
        format.html { render action: "new" }
        format.json { render json: @kuldevi_matum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kuldevi_mata/1
  # PUT /kuldevi_mata/1.json
  def update
    @kuldevi_matum = KuldeviMatum.find(params[:id])

    respond_to do |format|
      if @kuldevi_matum.update_attributes(params[:kuldevi_matum])
        format.html { redirect_to @kuldevi_matum, notice: 'Kuldevi matum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kuldevi_matum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kuldevi_mata/1
  # DELETE /kuldevi_mata/1.json
  def destroy
    @kuldevi_matum = KuldeviMatum.find(params[:id])
    @kuldevi_matum.destroy

    respond_to do |format|
      format.html { redirect_to kuldevi_mata_url }
      format.json { head :no_content }
    end
  end
end
