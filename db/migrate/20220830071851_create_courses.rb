class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |type|
      type.string(:title) #u can include null (:title,:null => false)
      type.string(:description)
      type.float(:price)
    end
  end
end
