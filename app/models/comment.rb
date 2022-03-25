class Comment < ApplicationRecord
  belongs_to :item
  belongs_to :member

  validates :content, presence: true
end
