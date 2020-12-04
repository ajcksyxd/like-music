class Music < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :artist
    validates :image
    validates :audio
    validates :introduction
  end
  
  belongs_to :user
  has_one_attached :image
end
