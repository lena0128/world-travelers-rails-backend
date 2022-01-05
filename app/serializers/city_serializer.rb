class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :image, :summary, :content, :created_at
end
