class Koordinator < ActiveRecord::Base
  attr_accessible :akademik, :enstitu, :uzem
  belongs_to :program
end
