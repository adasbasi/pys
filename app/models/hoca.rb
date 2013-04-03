class Hoca < ActiveRecord::Base
  attr_accessible :ad, :soyad, :unvan
  belongs_to :der
  has_many :haftas
end
