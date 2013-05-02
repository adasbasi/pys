class Takvim < ActiveRecord::Base
  belongs_to :lecture
  belongs_to :akademist
  attr_accessible :islem, :tarih, :lecture_id
  validates :islem, :tarih, presence:true
end
