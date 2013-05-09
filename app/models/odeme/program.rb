class Odeme::Program < ActiveRecord::Base
  attr_accessible :ad
  has_many :koordinators
  has_many :lectures
  has_many :aprograms
end
