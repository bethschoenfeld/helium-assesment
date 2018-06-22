class Employee < ApplicationRecord
  has_many :children, dependent: :destroy
  enum gender: [:Male, :Female]
end