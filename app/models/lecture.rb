class Lecture < ActiveRecord::Base
  belongs_to :odeme_program
  attr_accessible :ad, :kredi, :sube
  has_many :akademists
  has_many :takvims
  validates :ad, :kredi, :sube, presence:true
  validates :kredi, numericality:true
end
