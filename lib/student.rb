class Student
  attr_accessor :name, :grade
  attr_reader :id
  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end
  def self.create_tables
    sql = <<- SQl 
      CREATE TABLE IF NOT EXISTS songs (
      id INTEGER PRIMARY KEY,
      name TEXT,
      album TEXT,
      )
      SQl
    DB[:conn].execute(sql)
  end
    
end