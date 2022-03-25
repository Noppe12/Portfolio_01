class Creator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, dependent: :destroy
  has_many :contact, dependent: :destroy
  validates :penname, presence: true
  validates :email, presence: true

  def self.looks(search, word)
    if search == "partial_match"
      @customer = Creator.where("penname LIKE?","#{word}%")
    else
      @customer = Creator.all
    end
  end

end
