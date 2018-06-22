Employee.destroy_all
Child.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

james = Employee.create(
  id: 1, 
  birth_date: Date.parse("Jan 15 1975"),
  first_name: 'James',
  last_name: 'Smith',
  title: 'CEO'
)

linda = Employee.create(
  id: 2,
  birth_date: Date.parse("Feb 25 1962"),
  first_name: 'Linda',
  last_name: 'Franko',
  title: 'CFO'
)

catherine = Employee.create(
  id: 3,
  birth_date: Date.parse("May 26 1985"),
  first_name: 'Catherine',
  last_name: 'Dodge',
  title: 'Accountant'
)

david = Employee.create(
  id: 4,
  birth_date: Date.parse("July 09 1988"),
  first_name: 'David',
  last_name: 'Kim',
  title: 'Programmer'
)

joseph = Employee.create(
  id: 5,
  birth_date: Date.parse("March 24 1992"),
  first_name: 'Joseph',
  last_name: 'Norton',
  title: 'Designer'
)


Child.create(
  id: 1,
  emp_no: 2,
  birth_date: Date.parse("April 17 1982"),
  first_name: 'James',
  last_name: 'Franko',
  employee: james,

)