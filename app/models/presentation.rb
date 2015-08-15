class Presentation < ActiveRecord::Base
  has_many :slides

  validates :date, :name, presence: true
end
