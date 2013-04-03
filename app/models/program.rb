class Program < ActiveRecord::Base
  attr_accessible :ad, :donem, :katsayi
  has_many :koordinators
  has_many :ders
end
