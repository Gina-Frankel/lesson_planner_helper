class ObjectivePlanner

  BULLET_POINT = '• '
  HEADER = "Objectives:"
 attr_reader :objectives, :objective_number

  def initialize
    @objectives =[[HEADER]]
  end

  def add_to_plan(user_input)
    objectives.push([BULLET_POINT + user_input])
    self
  end

  private

  def format_for_display
     pp objectives
    # objectives.join("\n")
  end

end