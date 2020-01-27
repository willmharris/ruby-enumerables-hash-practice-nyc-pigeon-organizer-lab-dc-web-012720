def nyc_pigeon_organizer(data)
	genders = data[:gender]
	bird_name_array = genders.reduce([]) do |memo, (key, value)|
		memo = [] if !memo 
	 	i = 0 
	 	while i < value.length 
	 		memo << value[i] 
	 		i += 1 
	 	end 
	 	memo
	
	end 
	i = 0 
	finalhash = [] 
	while i < bird_name_array.length 
	    current_bird_name = bird_name_array[i]
	    colors  = data[:color] 
	    correct_colors_array = colors.reduce([]) do |memo, (key, value)|
	    		memo = [] if !memo
	    	 	if value.any? { |word| word == current_bird_name }
	    	 		memo << "#{key}"
	     		end 
	     		memo 
	    	end
    	gender = data[:gender]
	    correct_gender_array = gender.reduce([]) do |memo, (key, value)|
	    		memo = [] if !memo
	    	 	if value.any? { |word| word == current_bird_name }
	    	 		memo << "#{key}"
	     		end 
	     		memo 
	    	end
		lives = data[:lives]
		correct_lives_array = lives.reduce([]) do |memo, (key, value)|
			memo = [] if !memo
			 	if value.any? { |word| word == current_bird_name }
			 		memo << "#{key}"
		 		end 
	 		memo 
		end
	    finalhash[current_bird_name] = {
	      :color => correct_colors_array,
	      :gender => correct_gender_array,
	      :lives => correct_lives_array 
	    }
	    i += 1 
	end 
	finalhash 
end 