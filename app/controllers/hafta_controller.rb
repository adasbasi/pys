class HaftaController < ApplicationController
  # GET /hafta
  # GET /hafta.json
  def index
    @hafta = Haftum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hafta }
    end
  end

  # GET /hafta/1
  # GET /hafta/1.json
  def show
    @haftum = Haftum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @haftum }
    end
  end

  # GET /hafta/new
  # GET /hafta/new.json
  def new
    @haftum = Haftum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @haftum }
    end
  end

  # GET /hafta/1/edit
  def edit
    @haftum = Haftum.find(params[:id])
  end

  # POST /hafta
  # POST /hafta.json
  def create
    @haftum = Haftum.new(params[:haftum])

    respond_to do |format|
      if @haftum.save
        format.html { redirect_to @haftum, notice: 'Haftum was successfully created.' }
        format.json { render json: @haftum, status: :created, location: @haftum }
      else
        format.html { render action: "new" }
        format.json { render json: @haftum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hafta/1
  # PUT /hafta/1.json
  def update
    @haftum = Haftum.find(params[:id])

    respond_to do |format|
      if @haftum.update_attributes(params[:haftum])
        format.html { redirect_to @haftum, notice: 'Haftum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @haftum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hafta/1
  # DELETE /hafta/1.json
  def destroy
    @haftum = Haftum.find(params[:id])
    @haftum.destroy

    respond_to do |format|
      format.html { redirect_to hafta_url }
      format.json { head :no_content }
    end
  end
end
