def nyc_pigeon_organizer(data)
 
end

# Get an array of unique pigeon names 
# Map that array to an empty hash (filled in with appropriate subhashes) with the names as keys 
# Fill in each empty hash appropriately 

#  array of unique bird names 
  unique_bird_name_array = ["bird 1", "bird2"]
  i = 0 
  finalhash = [] 
  while i < unique_bird_name_array.length 
    current_bird_name = unique_bird_name_array[i]
    correct_colors_array = # code 
    correct_gender_array = # code 
    correct_lives_array = # code 
    finalhash[current_bird_name] = {
      :color => correct_colors_array,
      :gender => correct_gender_array,
      :lives => correct_lives_array 
    }
    i += 1 
  end 
  finalhash 