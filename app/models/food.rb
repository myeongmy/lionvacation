class Food < ActiveRecord::Base 
    mount_uploader :image, ImageUploader
    belongs_to :user
    has_many :fcomments
end
