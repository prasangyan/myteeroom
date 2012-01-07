# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create(:title => 'The parrot',
							 :description =>
											 %{<p>An awesome parrot for all those parrot lovers out there</p>},
							 :image_url => '/assets/teePreview1.jpg',
							 :price => 49.50)

Product.create(:title => 'The artist',
							 :description =>
											 %{<p>Show all the people the artist in you</p>},
							 :image_url => '/assets/teePreview2.jpg',
							 :price => 49.50)