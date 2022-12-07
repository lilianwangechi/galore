class PlantSerializer < ActiveModel::Serializer
  attributes :name, :image_url, :price
end
