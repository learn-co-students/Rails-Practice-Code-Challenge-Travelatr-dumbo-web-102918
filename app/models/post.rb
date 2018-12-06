class Post < ApplicationRecord
  belongs_to :blogger
  belongs_to :destination
  validates :title, :content, presence: true
  validates :content, length: {minimun: 100}
end
