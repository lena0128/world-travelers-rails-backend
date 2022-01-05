class GuideSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  has_one :city
end
