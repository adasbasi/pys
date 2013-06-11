# encoding: utf-8
class Odeme::AkademistsController < ApplicationController
  # GET /odeme/akademists
  # GET /odeme/akademists.json
  def index
    @odeme_akademists = Odeme::Akademist.all
    @koor = Koordinator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @odeme_akademists }
    end
  end

  # GET /odeme/akademists/1
  # GET /odeme/akademists/1.json
  def show
    
    @tarih = Takvim.all

    # var olan kodlar
    @odeme_akademist = Odeme::Akademist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @odeme_akademist }
    end
  end

  # GET /odeme/akademists/new
  # GET /odeme/akademists/new.json
  def new
    @lecture = Lecture.all
    if @lecture.any?
      @odeme_akademist = Odeme::Akademist.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @odeme_akademist }
      end
    else
      flash[:notice] = "Lütfen akademisyenin katılacağı programa ders ekleyiniz."
      redirect_to "/odeme/programs"
    end
  end

  # GET /odeme/akademists/1/edit
  def edit
    @odeme_akademist = Odeme::Akademist.find(params[:id])
  end

  # POST /odeme/akademists
  # POST /odeme/akademists.json
  def create
    @odeme_akademist = Odeme::Akademist.new(params[:odeme_akademist])

    respond_to do |format|
      if @odeme_akademist.save
        format.html { redirect_to @odeme_akademist, notice: 'Akademist was successfully created.' }
        format.json { render json: @odeme_akademist, status: :created, location: @odeme_akademist }
      else
        format.html { render action: "new" }
        format.json { render json: @odeme_akademist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /odeme/akademists/1
  # PUT /odeme/akademists/1.json
  def update
    @odeme_akademist = Odeme::Akademist.find(params[:id])

    respond_to do |format|
      if @odeme_akademist.update_attributes(params[:odeme_akademist])
        format.html { redirect_to @odeme_akademist, notice: 'Akademist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @odeme_akademist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odeme/akademists/1
  # DELETE /odeme/akademists/1.json
  def destroy
    @odeme_akademist = Odeme::Akademist.find(params[:id])
    @odeme_akademist.destroy

    respond_to do |format|
      format.html { redirect_to odeme_akademists_url }
      format.json { head :no_content }
    end
  end
end
