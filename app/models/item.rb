class Item < ApplicationRecord

  belongs_to :creator, optional: true
  belongs_to :member, optional: true

  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  attachment :image


  def self.looks(search, word)
    if search == "partial_match"
      @toukou = Item.where("image_name LIKE?","#{word}%")
    else
      @toukou = Item.all
    end
  end

end
