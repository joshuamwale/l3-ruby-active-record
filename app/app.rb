require "pry"
require "active_record"

# TODO: CONNECT TO THE DATABASE
ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/school.db"
)

# TODO: CREATE TABLE

create_courses_table = <<-SQL
   CREATE TABLE IF NOT EXISTS courses (
    id INTEGER PRIMARY KEY,
    name TEXT,
    description TEXT,
    duration INTEGER)
    SQL
    ActiveRecord::Base.connection.execute(create_courses_table)
   

# TODO: Create class that associates with the db table
#inherit active record base class
class Course < ActiveRecord::Base
end

# TODO: VIEW METHODS AVAILABLE FOR TABLE (methods)
  #done

# TODO: COLUMN NAMES (column_names)
  #done

# TODO: CREATE NEW RECORD (create)
  #Course.methods > Course.column_names > Course.create(name: 'Software Dev with Ruby', description: 'Ruby is great', duration: 10)

# TODO: VIEW ALL RECORDS (all)
    #Course.all in irb

# TODO: FIND BY ID (find)
    #Course.find(4) 4 is ID

# TODO: FIND BY GIVEN CONDITIONS (find_by)
#Course.find_by(name: "Reactjs", duration: nil)

# TODO: UPDATE RECORDS (save)
#react_course = Course.find(3)
#react_course.description = "Made by Meta"
#react_course.save

class Printer

  #receive params in the specified order
  
          # def printYou(key, value)
         #   puts "#{key}: #{value}"
         # end

  #receives params in the unspecified order
  
         # def printMe(key:, value:)
         #   puts "#{key}: #{value}"
         # end

binding.pry
