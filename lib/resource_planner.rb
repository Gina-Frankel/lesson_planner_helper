# frozen_string_literal: true

class ResourcePlanner
  attr_reader :heading, :resources
  def initialize
    @heading = 'Resources:'
    @resources = ['Resources:']
  end

  def add_to_plan(user_input)
    resources.push('• ' + user_input)
    convert_to_new_line_seperated_value(resources)
  end

  private

  def convert_to_new_line_seperated_value(resources)
    resources.join("\n")
  end
end
