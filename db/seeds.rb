# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
#---
# Excerpted from "Agile Web Development with Rails, 4rd Ed.",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create(:title => 'Buy Those Avatars!',
  :description => 
    %{<p>
        <em>Apple</em> 
      </p>},
  :image =>   'Apple.png',    
  :price => 42.95)
# . . .
Product.create(:title => 'Rice',
  :description =>
    %{<p>
        Love rice!
      </p>},
  :image => 'Rice.png',
  :price => 49.50)
# . . .

Product.create(:title => 'Love Sweets?',
  :description => 
    %{<p>
        <em>Get This One</em> 
      </p>},
  :image => 'Cake.png',
  :price => 43.75)

