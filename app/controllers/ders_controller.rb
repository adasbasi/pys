class DersController < ApplicationController
  # GET /ders
  # GET /ders.json
  def index
    @ders = Der.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ders }
    end
  end

  # GET /ders/1
  # GET /ders/1.json
  def show
    @der = Der.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @der }
    end
  end

  # GET /ders/new
  # GET /ders/new.json
  def new
    @der = Der.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @der }
    end
  end

  # GET /ders/1/edit
  def edit
    @der = Der.find(params[:id])
  end

  # POST /ders
  # POST /ders.json
  def create
    @der = Der.new(params[:der])

    respond_to do |format|
      if @der.save
        format.html { redirect_to @der, notice: 'Der was successfully created.' }
        format.json { render json: @der, status: :created, location: @der }
      else
        format.html { render action: "new" }
        format.json { render json: @der.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ders/1
  # PUT /ders/1.json
  def update
    @der = Der.find(params[:id])

    respond_to do |format|
      if @der.update_attributes(params[:der])
        format.html { redirect_to @der, notice: 'Der was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @der.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ders/1
  # DELETE /ders/1.json
  def destroy
    @der = Der.find(params[:id])
    @der.destroy

    respond_to do |format|
      format.html { redirect_to ders_url }
      format.json { head :no_content }
    end
  end
end
