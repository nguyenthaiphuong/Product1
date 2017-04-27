# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dept = ["Product1", "Product2", "Lab1", "Lab2", "R&D", "Sys Mgmt", "VN PMO", "HR", "Education", "HCM Product3", "HCM Lab3"]
 dept.each do |n|
  Dept.create!(name: n)
 end

 position = ["Comtor", "QC", "PHP Developer", "iOs Developer", "Android Developer", "Front_end Developer", "Ruby Developer"]
 position.each do |n|
  Position.create!(name: n)
 end

 role = ["Admin", "Manager", "Developer"]
 role.each do |n|
  Role.create!(name: n)
 end

project = ["overtime-manager", "orient-laravel", "nodejs_tax", "overtime_manager_front_end"]
project.each do |n|
  Project.create!(name: project)
end

# 3.times do |n|
#    name = "Admin"
#   Project.create!(name: name, description: name)
# end
#Team.create(name: "nguyen thai phuong", manager_id: 1 )
User.create!(email: 'phuong.nt@neo-lab.vn', nickname: 'UOne', name: 'User One',
  password: "123123123", position_id: 1, dept_id: 1, phone: "12345678", role_id: 1)

