class LessonPlanner
  attr_reader :resources, :questions, :objectives
  def initialize
    @resources = []
    @questions = []
    @objectives = []
  end

  def get_welcome_message
    'Welcome to the Provocation Station Planning Tool'
  end

  def add_resource(resource_item)
    resources.push(resource_item)
    resources.join("\n")
  end 

  def add_question(question)
    questions.push(question)
    questions.join("\n")
  end 

  def add_objective(objective)
    objectives.push(objective)
    objectives.join("\n") 
  end
  
end