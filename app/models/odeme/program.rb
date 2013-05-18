class Odeme::Program < ActiveRecord::Base
  attr_accessible :ad
  has_many :koordinators, :dependent => :destroy
  has_many :lectures, :dependent => :destroy
  has_many :aprograms, :dependent => :destroy

  attr_accessible :aprograms_attributes
  attr_accessible :koordinators_attributes
  attr_accessible :lectures_attributes

  accepts_nested_attributes_for :aprograms, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :koordinators, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :lectures, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
