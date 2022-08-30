require "pry"
require "active_record"

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/school-dev.sqlite3"
)

class Course < ActiveRecord::Base
end
binding.pry