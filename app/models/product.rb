class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true, length: {minimum: 10} 
  validates :image_url, allow_blank: true, 
      format: {
        with: %r{\.(gif|png|jpg)$}i, message: 'Must be a valid format.'
        }
end
