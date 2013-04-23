# encoding: utf-8
class LecturesController < ApplicationController
  def create
    @odeme_program = Odeme::Program.find(params[:program_id])
    @lecture = @odeme_program.lectures.create(params[:lecture])
    if @lecture.save
      redirect_to "/odeme/programs/#{@odeme_program.id}"
      flash[:notice] = "Başarılı bir şekilde kaydedildi."
    else
      redirect_to "/odeme/programs"
      flash[:notice] = "Kayıt işlemi sırasında hata oluştu."
    end
  end
end
