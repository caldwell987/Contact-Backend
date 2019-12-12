class PokemonSerializer < ActiveModel::Serializers
  attributes :id, :kind, :value, :user_id

  belongs_to :user
end
