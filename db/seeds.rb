# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.destroy_all
List.destroy_all

items_array = Item.create!([
  {
    content: "Laundry",
    completed: false
  },

  {
    content: "Eggs",
    completed: false
  },

  {
    content: "Bacon",
    completed: false
  },

  { 
    content: "<ul>
      <li>Here is a bullet point</li>
      <li>Here is another bullet point</li>
      <li>Here is third bullet point</li>
      </ul>",
    completed: false 
  },
  {
    content: "Stuff",
    completed: true
  }
])

an_item = Item.create!(
  {
    content: "Sausage",
    completed: true
  })

p "Created #{Item.count} items"

List.create!([
  {
    title: "Shopping",
    items: [an_item, items_array[1], items_array[2]]
  }, 

  {
    title: "To-do!",
    items: [items_array[0], items_array[3], items_array[4]]
  }

])

p "Created #{List.count} lists"