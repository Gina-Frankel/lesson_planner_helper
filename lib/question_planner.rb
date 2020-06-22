# frozen_string_literal: true

class QuestionPlanner
  BULLET_POINT = '• '
  attr_reader :questions

  HEADER = 'Questions:'
  def initialize
    @questions = [[HEADER]]
  end

  def add_to_plan(user_input)
    questions.push([BULLET_POINT + user_input])
    format_for_display
  end

  def format_for_display
    questions.join("\n")
  end
end
