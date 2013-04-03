class HocasController < ApplicationController
  # GET /hocas
  # GET /hocas.json
  def index
    @hocas = Hoca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hocas }
    end
  end

  # GET /hocas/1
  # GET /hocas/1.json
  def show
    @hoca = Hoca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hoca }
    end
  end

  # GET /hocas/new
  # GET /hocas/new.json
  def new
    @hoca = Hoca.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hoca }
    end
  end

  # GET /hocas/1/edit
  def edit
    @hoca = Hoca.find(params[:id])
  end

  # POST /hocas
  # POST /hocas.json
  def create
    @hoca = Hoca.new(params[:hoca])

    respond_to do |format|
      if @hoca.save
        format.html { redirect_to @hoca, notice: 'Hoca was successfully created.' }
        format.json { render json: @hoca, status: :created, location: @hoca }
      else
        format.html { render action: "new" }
        format.json { render json: @hoca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hocas/1
  # PUT /hocas/1.json
  def update
    @hoca = Hoca.find(params[:id])

    respond_to do |format|
      if @hoca.update_attributes(params[:hoca])
        format.html { redirect_to @hoca, notice: 'Hoca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hoca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hocas/1
  # DELETE /hocas/1.json
  def destroy
    @hoca = Hoca.find(params[:id])
    @hoca.destroy

    respond_to do |format|
      format.html { redirect_to hocas_url }
      format.json { head :no_content }
    end
  end
end
