class Portfolio < ApplicationRecord
  include Placeholder #to user method in placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  def self.ruby
    where(subtitle: 'Ruby on Rails')
  end
  scope :angular, -> { where(subtitle: 'Angular')}

  after_initialize :set_defaults
  def set_defaults
    self.thumb_image ||= Placeholder.image_generator(height: '350' ,width: '200')
    self.main_image ||= Placeholder.image_generator(height: '600' ,width: '400')
  end

end
