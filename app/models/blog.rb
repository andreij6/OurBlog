class Blog < ActiveRecord::Base
  attr_accessible :title, :content, :author, :category, :tag_list, :description, :image, :remote_image_url
  acts_as_taggable
  
  validates :content, presence: true,
                      length: { minimum: 2}
  validates :category, presence: true
  validates :title, presence: true,
                    uniqueness: true
  validates :author, presence: true
  validates :description, presence: true
  
  mount_uploader :image, ImageUploader 
  
  
end
