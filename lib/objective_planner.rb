class ObjectivePlanner

 attr_reader :objectives, :objective_number
 HEADER = "Objectives:"
  def initialize
    @objectives =[]
    @objective_number = 0
  end

  def add_to_plan(user_input)
    @objective_number += 1
    objective_number = objectives.length + 1
    numbered_plan = objective_number.to_s + '. ' + user_input
    objectives.push([numbered_plan])
    format_for_display
  end

  private

  def format_for_display
    HEADER + "\n" + objectives.join("\n")
  end

end