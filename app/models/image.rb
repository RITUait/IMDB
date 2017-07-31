class Image < ApplicationRecord
  belongs_to :resource, polymorphic: :true
  mount_uploader :image, AvatarUploader
end
