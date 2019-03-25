class ItemSerializer < ActiveModel::Serializer

  attributes :id, :image

  belongs_to :user

end
