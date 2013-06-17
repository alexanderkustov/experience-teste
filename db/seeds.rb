# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'DEFAULT USERS'

user = User.find_or_create_by_email(
			name:"Alexander Kustov",
			email: "alex@sample.com", 
			password: "password",
			password_confirmation: "password",
			phone: 910000000,
			fb: "https://www.facebook.com/me",
			gplus: "https://plus.google.com/u/0/",
			linked: "http://pt.linkedin.com/",
			twit: "https://twitter.com/",
			birth_date: (23.years.ago.to_date),
			nationality: "Russian",
			passport: "00000000000",
			ss: "000000000",
			address: "Sesame Street Nº1",
			image: File.open(File.join(Rails.root, '/app/assets/images/stock/alex.jpg'))
			)
user.toggle!(:producer)
puts 'user: ' << user.inspect

product1 = user.products.build(
		dt: "Great Product",
		desc: "This is in fact a great product",
		benefits: "Too much to say",
		estimated_rsp: "99$",
		l_price: "99$",
		benefits_clients: "The best you can get",
		videos: "Uploaded",
		sr2l: "I dont know what this is",
		refp_number: "########",
		fixed_costs: "0.99$",
		gross_margin: "98.01$",
		bp_link: "What?",
		pp_link: "What?")
product1.save
image1 = product1.images.build(
	image: File.open(File.join(Rails.root, '/app/assets/images/stock/1.jpg')),
	description: "Some amazing product description")
image1.save
product1.save
puts "product: " << product1.inspect
puts "image: " << image1.inspect


product2 = user.products.build(
		dt: "Great Product",
		desc: "This is in fact a great product",
		benefits: "Too much to say",
		estimated_rsp: "99$",
		l_price: "99$",
		benefits_clients: "The best you can get",
		videos: "Uploaded",
		sr2l: "I dont know what this is",
		refp_number: "########",
		fixed_costs: "0.99$",
		gross_margin: "98.01$",
		bp_link: "What?",
		pp_link: "What?")
product2.save
image2 = product2.images.build(
	image: File.open(File.join(Rails.root, '/app/assets/images/stock/2.jpg')),
	description: "Some amazing product description")
image2.save
product2.save
puts "product: " << product2.inspect
puts "image: " << image2.inspect



product3 = user.products.build(
		dt: "Great Product",
		desc: "This is in fact a great product",
		benefits: "Too much to say",
		estimated_rsp: "99$",
		l_price: "99$",
		benefits_clients: "The best you can get",
		videos: "Uploaded",
		sr2l: "I dont know what this is",
		refp_number: "########",
		fixed_costs: "0.99$",
		gross_margin: "98.01$",
		bp_link: "What?",
		pp_link: "What?")
product3.save
image3 = product3.images.build(
	image: File.open(File.join(Rails.root, '/app/assets/images/stock/3.jpg')),
	description: "Some amazing product description")
image3.save
product3.save
puts "product: " << product3.inspect
puts "image: " << image3.inspect



product4 = user.products.build(
		dt: "Great Product",
		desc: "This is in fact a great product",
		benefits: "Too much to say",
		estimated_rsp: "99$",
		l_price: "99$",
		benefits_clients: "The best you can get",
		videos: "Uploaded",
		sr2l: "I dont know what this is",
		refp_number: "########",
		fixed_costs: "0.99$",
		gross_margin: "98.01$",
		bp_link: "What?",
		pp_link: "What?")
product4.save
image4 = product4.images.build(
	image: File.open(File.join(Rails.root, '/app/assets/images/stock/4.jpg')),
	description: "Some amazing product description")
image4.save
product4.save
puts "product: " << product4.inspect
puts "image: " << image4.inspect



product5 = user.products.build(
		dt: "Great Product",
		desc: "This is in fact a great product",
		benefits: "Too much to say",
		estimated_rsp: "99$",
		l_price: "99$",
		benefits_clients: "The best you can get",
		videos: "Uploaded",
		sr2l: "I dont know what this is",
		refp_number: "########",
		fixed_costs: "0.99$",
		gross_margin: "98.01$",
		bp_link: "What?",
		pp_link: "What?")
product5.save
image5 = product5.images.build(
	image: File.open(File.join(Rails.root, '/app/assets/images/stock/5.jpg')),
	description: "Some amazing product description")
image5.save
product5.save
puts "product: " << product5.inspect
puts "image: " << image5.inspect


product6 = user.products.build(
		dt: "Great Product",
		desc: "This is in fact a great product",
		benefits: "Too much to say",
		estimated_rsp: "99$",
		l_price: "99$",
		benefits_clients: "The best you can get",
		videos: "Uploaded",
		sr2l: "I dont know what this is",
		refp_number: "########",
		fixed_costs: "0.99$",
		gross_margin: "98.01$",
		bp_link: "What?",
		pp_link: "What?")
product6.save
image6 = product6.images.build(
	image: File.open(File.join(Rails.root, '/app/assets/images/stock/6.jpg')),
	description: "Some amazing product description")
image6.save
product6.save
puts "product: " << product6.inspect
puts "image: " << image6.inspect




product7 = user.products.build(
		dt: "Great Product",
		desc: "This is in fact a great product",
		benefits: "Too much to say",
		estimated_rsp: "99$",
		l_price: "99$",
		benefits_clients: "The best you can get",
		videos: "Uploaded",
		sr2l: "I dont know what this is",
		refp_number: "########",
		fixed_costs: "0.99$",
		gross_margin: "98.01$",
		bp_link: "What?",
		pp_link: "What?")
product7.save
image7 = product7.images.build(
	image: File.open(File.join(Rails.root, '/app/assets/images/stock/7.jpg')),
	description: "Some amazing product description")
image7.save
product7.save
puts "product: " << product7.inspect
puts "image: " << image7.inspect





product8 = user.products.build(
		dt: "Great Product",
		desc: "This is in fact a great product",
		benefits: "Too much to say",
		estimated_rsp: "99$",
		l_price: "99$",
		benefits_clients: "The best you can get",
		videos: "Uploaded",
		sr2l: "I dont know what this is",
		refp_number: "########",
		fixed_costs: "0.99$",
		gross_margin: "98.01$",
		bp_link: "What?",
		pp_link: "What?")
product8.save
image8 = product8.images.build(
	image: File.open(File.join(Rails.root, '/app/assets/images/stock/8.jpg')),
	description: "Some amazing product description")
image8.save
product8.save
puts "product: " << product8.inspect
puts "image: " << image8.inspect
