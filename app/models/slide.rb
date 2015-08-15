class Slide < ActiveRecord::Base
  belongs_to :presentation

  validates :content, presence: true
end
