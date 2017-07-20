require('minitest/autorun')
require_relative('../models/students')
require('pry')

class TestHogwarts < MiniTest::Test

  def setup
    @student1 = Student.new('first_name' => 'Harry', 'second_name' => 'Potter', 'house' => 'Gryffindor', 'age' => '14')
    @student2 = Student.new('first_name' => 'Stacey', 'second_name' => 'Napier', 'house' => 'Hufflepuff', 'age' => '30')
    @student3 = Student.new('first_name' => 'Chris', 'second_name' => 'Donnelly', 'house' => 'RavenClaw', 'age' => '38')
    @student4 = Student.new('first_name' => 'Alex', 'second_name' => 'Bazlinton', 'house' => 'Slytherin', 'age' => '45')
  end

  def test_student_initialize
    result = @student1.first_name
    assert_equal("Harry", result)
  end

  def test_find_all_students
    
    
  end



end

