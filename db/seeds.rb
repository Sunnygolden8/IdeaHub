# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
<<<<<<< HEAD
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
Product.create(:title => 'Buy It',
  :description => 
    %{<p>
        <em>Avatars</em> 
      </p>},
  :image =>   '/images/Apple.png',    
  :price => 42.95)
# . . .
Product.create(:title => 'Avatar',
  :description =>
    %{<p>
        Love rice!
      </p>},
  :image => '/images/Rice.png',
  :price => 49.50)
# . . .

Product.create(:title => 'Love Sweets?',
  :description => 
    %{<p>
        <em>Get This One</em> 
      </p>},
  :image => '/images/Cake.png',
  :price => 43.75)

=======
>>>>>>> 8fbb2693a719143f28fad54a9febf1c15839e133
