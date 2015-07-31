
class Driver
attr_reader :type
attr_writer :type
  def initialize(young_savagery_on_the_west_side) 
  @type = young_savagery_on_the_west_side
    @result = ""
    @greeting = "hi"
    @characters= ["An old woman lives alone with her cats, and shuns the company of all humans" , "A poor boy in the underbelly of an urban city lives on the few scraps of food he can find" , "A jaded old man doesn't let anything come close to him, he is scarred from a war long past" , "A strong young man looks for his place in the world, but after months of searching, has come no closer to reaching his answer than he was on the farm which he left" , "A young woman leaves from her respected place in the tribe to go make her future in the modern world, what she finds was not what she was expecting!"]
    @plot_type= ["Hero's Journey","Romantic Comedy","Rags to Riches","Voyage and Return", "Suspense" , "Mystery", "Horror", "Thriller", "Comedy" ]
    @abstract= ["Freedom" , "Life" , "The Future", "Love", "Friendship", "Youth", "Thought", "Innovation", "Music"]
    @character_design = ["An evil villian", "A feral animal", "A buisinessman", "A savage", "A national hero", "A famous singer", "An old grandma"]
    @doodles = ["Dog", "Cat", "Alien", "Cow", "Cup", "The Sky", "Stars", "Person", "Coffee"]
    @personal_narrative = ["Write about a childhood moment", "Who is your favorite TV character?", "What is your biggest fear? And have you ever overcome it?", "What can others learn from your life experience?" , "Write about a moment where you were totally out of your comfort zone while trying something new", "Do you have any nicknames? What do they mean?" , "Write about your favorite moment you have ever had at a party" , "How do you define family?", "If your life was a graph, where would the highs and lows be?", "What motivates you?" , "When have you felt most ashamed?"]
    @practice_exercises = ["Shading", "Outlining", "Hatching", "Cross-Hatching", "Stipping", "Back and forth stroke",  "Scumbling", "Blending", "Depth","3D sphere", "3D Cylinder"]
    @time_period= ["1800's","1980's","1970's", "Greco-Roman Era", "Height of the egyptian empire", "Dark ages", "Early middle ages", "Late middle ages", "Renaissance", "Reformation", "Modern Age", "2000's", "Revolutionary War", "Dinosaur Times"]
end

  def personal_greeting
    @greeting + " " + @prompt_type
  end
  def check_type
    return @type
  end
  def save_rand_result(input)
    if input == "characters"
      @result = @characters.shuffle.first
    elsif input == "plot_type"
      @result = @plot_type.shuffle.first
      elsif input == "abstract"
      @result = @abstract.shuffle.first
    elsif input == "character_design"
      @result = @character_design.shuffle.first
    elsif input == "doodles"
      @result = @doodles.shuffle.first
    elsif input == "personal_narrative"
      @result = @personal_narrative.shuffle.first
    elsif input == "practice_exercises"
      @result = @practice_exercises.shuffle.first
    elsif input == "time_period"
      @result = @time_period.shuffle.first
    else 
      exit
    end
  end
  def return_result
    return @result
  end
  
  
  
  
  
  
  
  
end
