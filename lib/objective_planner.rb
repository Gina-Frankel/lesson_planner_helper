class ObjectivePlanner

 attr_reader :objectives, :objective_number
 HEADER = "Objectives:"

  def initialize
    @objectives =[[HEADER]]
  end

  def add_to_plan(user_input)
    bulleted_objectives =  '• ' + user_input
    objectives.push([bulleted_objectives])
    format_for_display
  end

  private

  def format_for_display
     objectives.join("\n")
  end

end