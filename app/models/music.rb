class Music < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :artist
    validates :image
    validates :audio
    validates :introduction
  end

  mount_uploader :audio, AudioUploader
  
  belongs_to :user
  has_one_attached :image
end
