class Odeme::Akademist < ActiveRecord::Base
  belongs_to :lecture
  attr_accessible :ad, :soyad, :unvan, :lecture_id
  has_many :takvims
  validates :ad, :soyad, :unvan, presence:true
end
