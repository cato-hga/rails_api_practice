class PhotoSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :title, :photo_url_string
end
