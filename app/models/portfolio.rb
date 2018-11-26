class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  def self.ruby
    where(subtitle: 'Ruby on Rails')
    
  end
  scope :angular, -> { where(subtitle: 'Angular')}

  after_initialize :set_defaults
  def set_defaults
    self.thumb_image ||= "https://via.placeholder.com/350x200"
    self.main_image ||= "https://via.placeholder.com/600x400"
  end


end
