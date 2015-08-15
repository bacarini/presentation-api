class PresentationSerializer < ActiveModel::Serializer
  attributes :id, :name, :date

  has_many :slides
end
