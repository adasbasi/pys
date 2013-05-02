class Odeme::Program < ActiveRecord::Base
  attr_accessible :ad, :donem, :katsayi
  has_many :koordinators
  has_many :lectures
  validates :ad, :donem, :katsayi, presence:true
  validates :katsayi, length:{in:1..4}
  validates :katsayi, numericality:true
end
