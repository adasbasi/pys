# encoding:utf-8
class TakvimsController < ApplicationController
  def create
    @akademisyen = Odeme::Akademist.find(params[:akademist_id])
    @tarih = @akademisyen.takvims.create(tarih:params[:tarih], islem:params[:islem], lecture_id:@akademisyen.lecture_id )
    if @tarih.save
       redirect_to "/odeme/akademists/#{@akademisyen.id}"
       flash[:notice] = "Başarılı bir şekilde kaydedildi."
    else
      redirect_to "/odeme/akademists"
      flash[:notice] = "Kayıt işlemi sırasında hata oluştu."
    end
  end
end
