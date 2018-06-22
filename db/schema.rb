ActiveRecord::Schema.define(version: 20180622160021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "child_no"
    t.integer "emp_no"
    t.string "first_name"
    t.string "last_name"
    t.integer "gender"
    t.date "birth_date"
    t.integer "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "emp_no"
    t.date "birth_date"
    t.string "first_name"
    t.string "last_name"
    t.integer "gender"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
