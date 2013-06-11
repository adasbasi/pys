class Lecture < ActiveRecord::Base
  require 'open-uri'
  require 'pathname'
  belongs_to :odeme_program
  attr_accessible :ad, :kredi, :sube, :program_id
  has_many :akademists
  has_many :takvims
  validates :ad, :kredi, :sube, presence:true
  validates :kredi, numericality:true
#  def self.import(file)
 #   CSV.foreach(Pathname(file), headers: true) do |row|
  #    Lecture.create! row.to_hash
  #  end
 # end
end
