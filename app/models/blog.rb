class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1}
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  validates_presence_of :title
  validates_presence_of :body
  validates_presence_of :topic_id
  belongs_to :topic
  has_many :comments, dependent: :destroy
end
