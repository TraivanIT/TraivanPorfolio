class Topic < ApplicationRecord
  validates_presence_of :title
  has_many :blogs

  def self.only_topic_that_have_blogs
    includes(:blogs).where.not(blogs: {id: nil})
  end
end
