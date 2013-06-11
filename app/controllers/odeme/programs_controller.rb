class Odeme::ProgramsController < ApplicationController
  # GET /odeme/programs
  # GET /odeme/programs.json
  def index
    @odeme_programs = Odeme::Program.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @odeme_programs }
    end
  end

  # GET /odeme/programs/1
  # GET /odeme/programs/1.json
  def show
      @dnm = Odeme::Program.find(params[:id]).dnm
      @krd = Odeme::Program.find(params[:id]).krd
      @odeme_program = Odeme::Program.find(params[:id])
    # 1.times { @odeme_program.koordinators.build }
    # 1.times { @odeme_program.lectures.build}

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @odeme_program }
      end
  end

  # GET /odeme/programs/new
  # GET /odeme/programs/new.json
  def new
    @odeme_program = Odeme::Program.new
  #  1.times { @odeme_program.aprograms.build }
  #  1.times { @odeme_program.koordinators.build }
  #  1.times { @odeme_program.lectures.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @odeme_program }
    end
  end

  # GET /odeme/programs/1/edit
  def edit
    @odeme_program = Odeme::Program.find(params[:id])
  end

  # POST /odeme/programs
  # POST /odeme/programs.json
  def create
    @odeme_program = Odeme::Program.new(params[:odeme_program])
  #  1.times { @odeme_program.aprograms.build }
  #  1.times { @odeme_program.koordinators.build }
  #  1.times { @odeme_program.lectures.build }


    respond_to do |format|
      if @odeme_program.save
        format.html { redirect_to @odeme_program, notice: 'Program was successfully created.' }
        format.json { render json: @odeme_program, status: :created, location: @odeme_program }
      else
        format.html { render action: "new" }
        format.json { render json: @odeme_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /odeme/programs/1
  # PUT /odeme/programs/1.json
  def update
    @odeme_program = Odeme::Program.find(params[:id])

    respond_to do |format|
      if @odeme_program.update_attributes(params[:odeme_program])
        format.html { redirect_to @odeme_program, notice: 'Program was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @odeme_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odeme/programs/1
  # DELETE /odeme/programs/1.json
  def destroy
    @odeme_program = Odeme::Program.find(params[:id])
    @odeme_program.destroy

    respond_to do |format|
      format.html { redirect_to odeme_programs_url }
      format.json { head :no_content }
    end
  end
end
