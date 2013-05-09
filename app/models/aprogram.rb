class Aprogram < ActiveRecord::Base
  belongs_to :odeme_program
  attr_accessible :donem, :katsayi
end
