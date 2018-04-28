class FortuneSerializer < ActiveModel::Serializer
  attributes :id, :gif, :message, :date, :user_id
end
