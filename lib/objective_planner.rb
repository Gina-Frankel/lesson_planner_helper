class ObjectivePlanner

 attr_reader :objectives
  def initialize
    @objectives =["Objectives:"]
  end

  def add_to_plan(user_input)
    objectives.push('1. ' + user_input)
    convert_to_new_line_seperated_value
  end

  def convert_to_new_line_seperated_value
    objectives.join("\n")
  end

end