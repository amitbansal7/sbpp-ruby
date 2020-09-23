# How do you return a collection that is collaborative result of several method?

# Add a paramter that collects their results to all the submethods.

def married_men_and_unmarried_woman
  result = []
  add_married_men_to(result)
  add_unmarried_woman_to(result)
  result
end

def add_married_men_to(result)
  people.each do |person|
    result << person if person.married? && person.man
  endg
end

def add_unmarried_woman_to(result)
  people.each do |person|
    result << person if person.unmarried? && person.woman
  end
end
