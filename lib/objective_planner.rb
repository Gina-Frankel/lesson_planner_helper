class ObjectivePlanner

  BULLET_POINT = '• '
  HEADER = "Objectives:"
 attr_reader :objectives, :objective_number

  def initialize
    @objectives =[[HEADER]]
  end

  def add_to_plan(user_input)
    objectives.push([BULLET_POINT + user_input])
    format_for_display
  end

  private

  def format_for_display
     objectives.join("\n")
  end

end