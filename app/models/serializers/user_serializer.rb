class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :password_confirmation, :firstname, :lastname

  has_many :contacts
end
