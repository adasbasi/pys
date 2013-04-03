class Der < ActiveRecord::Base
  attr_accessible :ad, :kredi, :sube
  belongs_to :program
  has_many :hocas
  has_many :haftas
end
