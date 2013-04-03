class KoordinatorsController < ApplicationController
  # GET /koordinators
  # GET /koordinators.json
  def index
    @koordinators = Koordinator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @koordinators }
    end
  end

  # GET /koordinators/1
  # GET /koordinators/1.json
  def show
    @koordinator = Koordinator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @koordinator }
    end
  end

  # GET /koordinators/new
  # GET /koordinators/new.json
  def new
    @koordinator = Koordinator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @koordinator }
    end
  end

  # GET /koordinators/1/edit
  def edit
    @koordinator = Koordinator.find(params[:id])
  end

  # POST /koordinators
  # POST /koordinators.json
  def create
    @koordinator = Koordinator.new(params[:koordinator])

    respond_to do |format|
      if @koordinator.save
        format.html { redirect_to @koordinator, notice: 'Koordinator was successfully created.' }
        format.json { render json: @koordinator, status: :created, location: @koordinator }
      else
        format.html { render action: "new" }
        format.json { render json: @koordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /koordinators/1
  # PUT /koordinators/1.json
  def update
    @koordinator = Koordinator.find(params[:id])

    respond_to do |format|
      if @koordinator.update_attributes(params[:koordinator])
        format.html { redirect_to @koordinator, notice: 'Koordinator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @koordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /koordinators/1
  # DELETE /koordinators/1.json
  def destroy
    @koordinator = Koordinator.find(params[:id])
    @koordinator.destroy

    respond_to do |format|
      format.html { redirect_to koordinators_url }
      format.json { head :no_content }
    end
  end
end
