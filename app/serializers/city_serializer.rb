class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :image, :summary, :content, :likes
end
