class SlideSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  has_many :sub, url: true
end
