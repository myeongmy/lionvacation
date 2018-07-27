class Thing < ActiveRecord::Base
    has_many :tcomments
    belongs_to :user
    mount_uploader :image, ImageUploader
end
