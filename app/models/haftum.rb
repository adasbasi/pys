class Haftum < ActiveRecord::Base
  attr_accessible :durum, :tarih
  belongs_to :der
  belongs_to :hoca
end
