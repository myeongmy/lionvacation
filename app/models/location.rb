class Location < ActiveRecord::Base
    has_many :lcomments
    belongs_to :user
    mount_uploader :image, ImageUploader
end
