class Koordinator < ActiveRecord::Base
  belongs_to :odeme_program
  attr_accessible :akademik, :enstitu, :kurum
  validates :kurum, presence:true
end
