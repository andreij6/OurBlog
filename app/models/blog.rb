class Blog < ActiveRecord::Base
  attr_accessible :title, :content, :author, :category, :tag_list, :description
  acts_as_taggable
  
  validates :content, presence: true
  validates :category, presence: true
  validates :title, presence: true,
                    uniqueness: true
  validates :author, presence: true
  validates :tag_list, presence: true
  validates :description, presence: true
  
  
end
