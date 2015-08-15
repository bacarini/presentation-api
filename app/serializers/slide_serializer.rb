class SlideSerializer < ActiveModel::Serializer
  attributes :id, :content

  belongs_to :presentation
end
