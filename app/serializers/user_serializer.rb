class UserSerializer < ActiveModel::Serializer

  attributes :id, :first_name, :last_name, :username, :password

  has_many :items

end
