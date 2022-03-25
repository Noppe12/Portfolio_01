class Contact < ApplicationRecord
  belongs_to :creator

  validates :content, presence: true
end
