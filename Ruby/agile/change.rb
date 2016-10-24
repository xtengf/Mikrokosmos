class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2
      
      t.timestamps
    end
  end
end


#sometimes a class method needs to create an instance of that class

class Person < ApplicationRecord
  def self.for_dave
    Person.new(name: 'Dave')
  end
end

class Employee < Person
  # ..
end

dave = Employee.for_dave # returns a Person