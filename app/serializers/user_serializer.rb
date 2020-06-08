class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :status
  has_many :activities
end
