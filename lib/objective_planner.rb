class ObjectivePlanner

 attr_reader :objectives, :objective_number
 HEADER = "Objectives:"

  def initialize
    @objectives =[[HEADER]]
  end

  def add_to_plan(user_input)
    #objective_number = objectives.length.to_s
    #numbered_plan = objective_number + '. ' + user_input
    objectives.push([user_input])
    format_for_display
  end

  private

  def format_for_display
     objectives.join("\n")
  end

end