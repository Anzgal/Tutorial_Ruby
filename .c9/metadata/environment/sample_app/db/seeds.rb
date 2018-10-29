{"filter":false,"title":"seeds.rb","tooltip":"/sample_app/db/seeds.rb","undoManager":{"mark":1,"position":1,"stack":[[{"start":{"row":0,"column":0},"end":{"row":7,"column":0},"action":"remove","lines":["# This file should contain all the record creation needed to seed the database with its default values.","# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).","#","# Examples:","#","#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])","#   Character.create(name: 'Luke', movie: movies.first)",""],"id":2},{"start":{"row":0,"column":0},"end":{"row":13,"column":3},"action":"insert","lines":["User.create!(name:  \"Example User\",","             email: \"example@railstutorial.org\",","             password:              \"foobar\",","             password_confirmation: \"foobar\")","","99.times do |n|","  name  = Faker::Name.name","  email = \"example-#{n+1}@railstutorial.org\"","  password = \"password\"","  User.create!(name:  name,","               email: email,","               password:              password,","               password_confirmation: password)","end"]}],[{"start":{"row":0,"column":0},"end":{"row":13,"column":3},"action":"remove","lines":["User.create!(name:  \"Example User\",","             email: \"example@railstutorial.org\",","             password:              \"foobar\",","             password_confirmation: \"foobar\")","","99.times do |n|","  name  = Faker::Name.name","  email = \"example-#{n+1}@railstutorial.org\"","  password = \"password\"","  User.create!(name:  name,","               email: email,","               password:              password,","               password_confirmation: password)","end"],"id":3},{"start":{"row":0,"column":0},"end":{"row":14,"column":3},"action":"insert","lines":["User.create!(name:  \"Example User\",","             email: \"example@railstutorial.org\",","             password:              \"foobar\",","             password_confirmation: \"foobar\",","             admin: true)","","99.times do |n|","  name  = Faker::Name.name","  email = \"example-#{n+1}@railstutorial.org\"","  password = \"password\"","  User.create!(name:  name,","               email: email,","               password:              password,","               password_confirmation: password)","end"]}]]},"ace":{"folds":[],"scrolltop":24,"scrollleft":0,"selection":{"start":{"row":14,"column":3},"end":{"row":14,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":0,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1540777784663,"hash":"0c466a638052523b898a9af833eb3ca59dba58ef"}