class Product < ApplicationRecord

has_many :comments
belongs_to :category, optional: true
belongs_to :user, optional: true
has_one_attached :avatar

end
