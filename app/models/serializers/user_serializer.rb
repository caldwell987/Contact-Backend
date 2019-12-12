class UserSerializer < ActiveModel::Serializers
  attributes :id, :username, :password, :password_confirmation, :firstname, :lastname

  has_many :contacts
end
