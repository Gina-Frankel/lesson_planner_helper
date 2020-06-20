require 'resource_planner'

class LessonPlanner
  attr_reader :resources, :questions, :objectives
  def initialize
    #@resources = []
    @questions = []
    @objectives = []
  end

  def get_welcome_message
    'Welcome to the Provocation Station Planning Tool'
  end

  def write(planner, user_input)
    planner.add_to_plan(user_input)
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