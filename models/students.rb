require('pg')
require('pry')
require_relative('../db/sql_runner.rb')

class Student

  attr_reader :id, :first_name, :second_name, :house_id, :age

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house_id = options['house_id'].to_i
    @age = options['age'].to_i
  end

  def save
    sql = "INSERT INTO students (first_name, second_name, house_id, age) VALUES ('#{@first_name}', '#{@second_name}', '#{@house_id}', '#{@age}') RETURNING id;"
    result = SqlRunner.run(sql)[0]
    @id = result['id']
  end

  # def find_house
  #   id = @house_id
  #   return House.find(id)
  # end

  def self.delete(id)
    sql = "DELETE FROM students WHERE id = #{id};"
    SqlRunner.run(sql)
  end
  
  def self.delete_all
    sql = "DELETE FROM students;"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id=#{id}"
    student = SqlRunner.run(sql)
    result = Student.new(student.first)
    return result
  end


  def self.find_all
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map { |student| Student.new(student) }
    return result
  end








end
