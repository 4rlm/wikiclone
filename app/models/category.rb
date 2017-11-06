class Category < ApplicationRecord
  #has_many :articles
  has_many :users, through: :articles
  has_many :authors, through: :articles, source: :user
  has_many :article_categories
  has_many :articles, through: :article_categories


  #validates :name, presence: true
  #validates :name, uniqueness: true
  #validates_length_of :name, minimum: 1, maximum: 15, allow_blank: false #it's a constrain too

end
