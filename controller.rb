require'sinatra'
require'sinatra/contrib/all'
require'pry'
require_relative'./models/students.rb'
require_relative'./models/house.rb'


get '/students' do
  @students = Student.find_all
  erb(:index)
end

# get '/students/new' do
#   @student = Student.new(params)
#   erb(:new)
# end
get '/students/new' do
  @houses = House.find_all
  @student = Student.new(params)
  erb(:new)
end

post '/students' do
  new_student = Student.new(params)
  new_student.save
  redirect to '/students'
end

