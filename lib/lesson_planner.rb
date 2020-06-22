require 'resource_planner'
require 'printer'

class LessonPlanner
  attr_reader :resources, :questions, :objectives, :plan
  attr_accessor :printer
  def initialize(printer: Printer.new )
    #@resources = []
    @questions = []
    @objectives = []
    #@resources = ResourcePlanner.new
    @printer = printer
    @plan =  ""
  end

  def get_welcome_message
    'Welcome to the Provocation Station Planning Tool'
  end

  def write(planner, user_input)
    @plan = planner.add_to_plan(user_input)
  end 

  def display
    printer.output(plan)
  end 
    

  # def add_question(question)
  #   questions.push(question)
  #   questions.join("\n")
  # end 

  # def add_objective(objective)
  #   objectives.push(objective)
  #   objectives.join("\n") 
  # end
  
end