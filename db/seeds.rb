# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# puts "Destroying features..."
# Feature.destroy_all
puts "Creating features..."
Feature.create!(
  name: "Dishwasher"
)
Feature.create!(
  name: "Air fryer"
)
Feature.create!(
  name: "Flatware"
)
Feature.create!(
  name: "Electric stow"
)
Feature.create!(
  name: "Gas stow"
)
Feature.create!(
  name: "Fireplace"
)
Feature.create!(
  name: "Barbecue"
)
Feature.create!(
  name: "Swimming pool"
)
Feature.create!(
  name: "Outdoor barbecue"
)
Feature.create!(
  name: "Oven"
)
Feature.create!(
  name: "Flatware"
)
Feature.create!(
  name: "Pots & pans"
)
Feature.create!(
  name: "Plates"
)
Feature.create!(
  name: "Glasses"
)
Feature.create!(
  name: "Piano"
)
Feature.create!(
  name: "Panorama view"
)
Feature.create!(
  name: "Pet frendly"
)
Feature.create!(
  name: "Ice maker"
)
Feature.create!(
  name: "Fridge"
)
puts "Finished!"
