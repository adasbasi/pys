class Takvim < ActiveRecord::Base
  belongs_to :lecture
  belongs_to :akademist
  attr_accessible :islem, :takvim_tarih
  def start_time
    takvim_tarih
  end
end
