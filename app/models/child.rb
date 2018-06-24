class Child < ApplicationRecord
  belongs_to :employee, :foreign_key => "employee_id"
  enum gender: [:Male, :Female]
  enum relationship: [:Son, :Daughter]
end
