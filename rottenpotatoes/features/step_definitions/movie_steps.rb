Given ("the following movies exist:") do |table|
	table.hashes.each do |movie|
		Movie.create!(movie)
	end
end

Then ("the director of {string} should be {string}") do |movie_title, director_name|
	movie = Movie.find_by(title: movie_title)
	expect(movie.director).to eq director_name
end

Then("I should see {string} before {string}") do |movie1, movie2|
  page.body.index(movie1).should < page.body.index(movie2)
end

# Then("I should see {string} is hilite") do |option|
# 	expect(option.class).to eq "hilite"
# end