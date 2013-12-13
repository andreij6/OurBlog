class Blog < ActiveRecord::Base
  attr_accessible :title, :content, :author, :category, :tag_list, :description, :image, :remote_image_url
  acts_as_taggable
  
  validates :content, presence: true
  validates :category, presence: true
  validates :title, presence: true,
                    uniqueness: true
  validates :author, presence: true
  #validates :tag_list, presence: true
  validates :description, presence: true
  
  mount_uploader :image, ImageUploader 
  
  
end
