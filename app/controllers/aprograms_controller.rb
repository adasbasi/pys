# encoding: utf-8
class AprogramsController < ApplicationController
  def create
    @odeme_program = Odeme::Program.find(params[:program_id])
    @aprogram = @odeme_program.aprograms.create(params[:aprogram])
    if @aprogram.save
      @odeme_program.update_attribute(:dnm,true)
      redirect_to "/odeme/programs/"
      flash[:notice] = "Başarılı bir şekilde kaydedildi."
    else
      redirect_to "/odeme/programs"
      flash[:notice] = "Kayıt işlemi sırasında hata oluştu."
    end
  end
end
