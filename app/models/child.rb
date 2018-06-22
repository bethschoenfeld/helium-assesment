class Child < ApplicationRecord
  belongs_to :employee
  # enum [:Male, :Female]
end
