# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'yaml'

# Load the services from the YAML file

services = YAML.load_file('db/services.yml')

# Create the services

services.each do |service|
    Service.create([{ name: service.name, description: service.description }])
end