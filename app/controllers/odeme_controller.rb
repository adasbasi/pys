class OdemeController < ApplicationController
  def index
  end
  def liste
    @odeme_program = Odeme::Program.all
    @odeme_program.insert(0,nil)
    @aprograms = Aprogram.all
    @akademist = Odeme::Akademist.all
  end
end
