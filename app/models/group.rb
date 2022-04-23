class Group < ApplicationRecord
  has_and_belongs_to_many :operations
  belongs_to :author, class_name: 'User'

  validates :name, :icon, presence: true

  def total_amount
    operations.sum(:amount)
  end
end
