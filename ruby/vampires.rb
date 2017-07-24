puts "How many employees will you be processing?"
processing_num = gets.chomp

def survey()
  puts "What is your name?"
  name = gets.chomp
  puts "What is your age?"
  age = gets.chomp
  puts "What year were you born?"
  birth_year = gets.chomp

  current_year = 2017

  correct_year = current_year - age.to_i

  puts "If we give you some garlic bread, will you eat it? (y/n)"
  garlic_bread = gets.chomp

  if (garlic_bread == "y")
    vampire_gb = false
  else
    vampire_gb = true
  end

  puts "Would you like to be enrolled in the company's life insurance program? (y/n)"
  life_insurance = gets.chomp

  if life_insurance == "y"
    vampire_li = false
  else
    vampire_li = true
  end

  puts "Do you have any allergies?"
  any_allergies = gets.chomp
  if any_allergies == "y"
    puts "Please list them one at a time: "
    allergies = ""
    until (allergies == "sunshine" || allergies =="done")
      allergies = gets.chomp
      if allergies == "sunshine"
        puts "Probably a vampire"
      else
      end
    end
  else
  end

  if (correct_year == birth_year) && (vampire_gb == false)
    puts "Probably not a vampire"
  elsif (correct_year != birth_year) && (vampire_gb == true || vampire_li == true)
    puts "Probably a vampire"
  elsif (correct_year != birth_year) && vampire_gb == true && vampire_li == true
    puts "Almost certainly a vampire"
  elsif (name == "Drake Cula" || name == "Tu Fang")
    puts "Definitely a vampire"
  else
    puts "Results inconclusive"
  end
end

n = 0
while n < processing_num.to_i
  survey()
  n += 1
end
