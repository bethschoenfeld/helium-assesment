Employee.destroy_all
Child.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

james = Employee.create(
  emp_no: 1, 
  birth_date: Date.parse("Jan 15 1975"),
  first_name: 'James',
  last_name: 'Smith',
  gender: 0,
  title: 'CEO'
)

linda = Employee.create(
  emp_no: 2,
  birth_date: Date.parse("Feb 25 1962"),
  first_name: 'Linda',
  last_name: 'Franko',
  gender: 1,
  title: 'CFO'
)

catherine = Employee.create(
  emp_no: 3,
  birth_date: Date.parse("May 26 1985"),
  first_name: 'Catherine',
  last_name: 'Dodge',
  gender: 1,
  title: 'Accountant'
)

david = Employee.create(
  emp_no: 4,
  birth_date: Date.parse("July 09 1988"),
  first_name: 'David',
  last_name: 'Kim',
  gender: 0,
  title: 'Programmer'
)

joseph = Employee.create(
  emp_no: 5,
  birth_date: Date.parse("March 24 1992"),
  first_name: 'Joseph',
  last_name: 'Norton',
  gender: 0,
  title: 'Designer'
)


Child.create(
  id: 1,
  employee_id: 2,
  birth_date: Date.parse("April 17 1982"),
  first_name: 'James',
  last_name: 'Franko',
  gender: 0,
  employee: linda,
  relationship: 1

)

Child.create(
  id: 2,
  employee_id: 2,
  birth_date: Date.parse("November 18 1996"),
  first_name: 'Julie',
  last_name: 'Franko',
  gender: 1,
  employee: linda,
  relationship: 1

)

Child.create(
  id: 3,
  employee_id: 4,
  birth_date: Date.parse("April 16 2015"),
  first_name: 'Molly',
  last_name: 'Kim',
  gender: 1,
  employee: david,
  relationship: 1

)

Child.create(
  id: 4,
  employee_id: 1,
  birth_date: Date.parse("July 09 1998"),
  first_name: 'Taylor',
  last_name: 'Smith',
  gender: 1,
  employee: james,
  relationship: 1

)

Child.create(
  id: 5,
  employee_id: 1,
  birth_date: Date.parse("March 24 1992"),
  first_name: 'Benjamin',
  last_name: 'Smith',
  gender: 0,
  employee: james,
  relationship: 1

)