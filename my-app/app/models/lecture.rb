class Lecture < ApplicationRecord
  belongs_to :lecture_name
  belongs_to :lecturer
  belongs_to :kind
  
  validates :content, presence: true, length: { maximum: 255 }
  validates :year, presence: true
  
  mount_uploader :image, ImagesUploader
end
