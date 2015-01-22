class Blog < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name, :content
  validates :name, uniqueness: true
end
