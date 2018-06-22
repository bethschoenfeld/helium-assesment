class Child < ApplicationRecord
  belongs_to :employee
  enum relationship: [:Male, :Female]
end
