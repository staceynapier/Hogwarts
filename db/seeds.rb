require('pg')
require('pry')
require_relative('../models/students.rb')
require_relative('../models/house.rb')

Student.delete_all
House.delete_all


house1 = House.new('name' => 'Gryffindor', 'logo' => 'http://img09.deviantart.net/56b5/i/2011/255/6/8/gryffindor_crest_by_tuliipiie-d491bqc.jpg')
house1.save
house2 = House.new('name' => 'Slytherin', 'logo' => 'http://i01.i.aliimg.com/wsphoto/v0/760030533/Christmas-gift-Harry-Potter-Slytherin-Logo-Multicolour-Tattoo-For-Body-Art-Painting-Nontoxic-And-Tasteless-Cosplay.jpg')
house2.save
house3 = House.new('name' => 'RavenClaw', 'logo' => 'http://images.esellerpro.com/2903/I/615/62/lrgscalePE60401ACCPOS-HARRY-POTTER-Magnet-Ravenclaw-Crest.jpg')
house3.save
house4 = House.new('name' => 'Hufflepuff', 'logo' => 'http://images.esellerpro.com/2903/I/615/61/lrgscalePE60311ACCPOS-HARRY-POTTER-Magnet-Hufflepuff-Crest.jpg')
house4.save


student1 = Student.new('first_name' => 'Harry', 'second_name' => 'Potter', 'house_id' => house1.id, 'age' => '14')
student1.save
student2 = Student.new('first_name' => 'Stacey', 'second_name' => 'Napier', 'house_id' => house4.id, 'age' => '30')
student2.save
student3 = Student.new('first_name' => 'Chris', 'second_name' => 'Donnelly', 'house_id' => house3.id, 'age' => '38')
student3.save
student4 = Student.new('first_name' => 'Alex', 'second_name' => 'Bazlinton', 'house_id' => house2.id, 'age' => '45')
student4.save



nil