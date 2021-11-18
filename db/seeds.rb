require 'faker'


puts "Cleaning database..."
Movie.destroy_all

puts "Creating 12 movies..."

12.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movies::BackToTheFuture.quote,
    poster_url: Faker::Internet.url(host: 'movies.com'),
    rating: rand(5..10).to_f
  )
  movie.save!
end
puts 'Finished!'
