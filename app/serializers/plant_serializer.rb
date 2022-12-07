class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :price
end
