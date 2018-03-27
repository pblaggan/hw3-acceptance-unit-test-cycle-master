Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    # hint: look at movies_controller#create for a hint toward the one-line solution.
		Movie.create!(movie)   

  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
    regexp= /"#{e1}"."#{e2}"/m
    expect(page.body).to match(regexp)

end






Then /the director of "(.*)" should be "(.*)"/ do |movie,director|
    step %Q{I should see "#{movie}"}
    step %Q{I should see "#{director}"}
end








# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb

	rating_list.split.each do |rating|
		step %Q{I #{uncheck}check ratings_#{rating}}
  end
  
  
  
  
end

