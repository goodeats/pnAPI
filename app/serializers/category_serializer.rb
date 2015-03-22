class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :articles

  has_many :articles

end
