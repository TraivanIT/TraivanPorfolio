class Portfolio < ApplicationRecord
  include Placeholder #to use method in placeholder module

  has_many :technologies #association between technology model(Table)
  #accepts_nested_attributes_for is the nested form to create technology in portfolio form 
  #reject_if this is the validation
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda {|attrs| attrs['name'].blank?}


  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.ruby
    where(subtitle: 'Ruby on Rails')
  end

  def self.by_position
    order("position ASC")
  end
  scope :angular, -> { where(subtitle: 'Angular')}

  after_initialize :set_defaults
  def set_defaults
    self.thumb_image ||= Placeholder.image_generator(height: '350' ,width: '200')
    self.main_image ||= Placeholder.image_generator(height: '600' ,width: '400')
  end

end