# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

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

