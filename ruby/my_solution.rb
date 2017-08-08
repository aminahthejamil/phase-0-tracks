# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Links Ruby files together from same directory, so one Ruby file can be seen in another.  Like a copy/paste.
# If 'require' is used, FULL(like the WHOLE thing) path is needed.

require_relative 'state_data'

class VirusPredictor

  # Creates new instance of class with given parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # 'Middleman' calling two other methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # This method gives values on predicted deaths for each state based on pop density and total pop
  # using a multiplication formula, and prints results.
  def predicted_deaths

    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end


    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"


    # This is the refactored version, using a case statement to create DRY code.
    a = @population_density
    b = @population

      case a
      when (200..11000)
        number_of_deaths =(b * 0.4).floor
      when (150..199)
        number_of_deaths =(b * 0.3).floor
      when (100..149)
        number_of_deaths =(b * 0.2).floor
      when (50..99)
        number_of_deaths =(b * 0.1).floor
      else
        number_of_deaths =(b * 0.05).floor
      end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Giving calculations based off pop density - how fast will it spread? In more densely populated states,
  # the virus will spread faster.  Prints results.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    # puts " and will spread across the state in #{speed} months.\n\n"

     # This is the refactored version, using a case statement to create DRY code.
    speed = 0.0
    a = @population_density

      case a
      when (200..11000)
        speed += 0.5
      when (150..199)
        speed += 1
      when (100..149)
        speed += 1.5
      when (50..99)
        speed += 2
      else
        speed += 2.5
      end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state_name, data|
  state_name = VirusPredictor.new(state_name, data[:population_density], data[:population])
  state_name.virus_effects
end


#=======================================================================
# Reflection Section

# 1. The hash rocket allows the key to be more clear and called upon. The symbol is better for programmers to read and make changes upon.
# 2. Require_relative allows other files to be accessed from within the ruby document without having to use the whole directory link.
# 3. Use built-in methods, such as .each, to access the keys and values
# 4. The variables were declared a lot when they didn't need to be, after they were declared in the initialize method
# 5. Variables and not having to set them as parameters for each method they'd be used with.
