# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Movie.destroy_all

Movie.create!(title: "Matrix", director: "Nolan", actors: "Keanu Reeves", summary: "A distopian world powered by humans.")
# new_movie.poster.attach(io: File.open(File.join(Rails.root,'db/images/Matrix.jpg')), filename: 'Matrix.jpg')

Movie.last.poster.attach(io: File.open(File.join(Rails.root,'db/images/Matrix.jpg')), filename: 'Matrix.jpg')

Movie.create!(title: "Pets", director: "Nolan", actors: "animations", summary: "Pets living secret lives.")
Movie.create!(title: "Ariel", director: "Disney", actors: "Ariel", summary: "A mermaid wants to be human.")
Movie.create!(title: "Looper", director: "Nolan", actors: "Bruce Willis", summary: "A distopian world with time travel.")
Movie.create!(title: "Jaws", director: "Nolan", actors: "People", summary: "Sharks everywhere. Scary.")

puts "Finished! Created #{Movie.count} movies."
