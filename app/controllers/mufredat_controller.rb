class MufredatController < ApplicationController
  def index
    @odeme_program = Odeme::Program.all
    @odeme_program.insert(0,nil)
    @aktif = Aprogram.all
  end
end
