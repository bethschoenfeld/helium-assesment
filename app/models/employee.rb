class Employee < ApplicationRecord
  has_many :children, dependent: :destroy
  # enum [:Male, :Female]
end