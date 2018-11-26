class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  def self.ruby
    where(subtitle: 'Ruby on Rails')
    
  end

  scope :angular, -> { where(subtitle: 'Angular')}
end
