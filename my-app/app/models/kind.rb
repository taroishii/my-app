class Kind < ApplicationRecord
  validates :content, presence: true, length: { maximum: 50 }
  
  has_many :lecture
end
