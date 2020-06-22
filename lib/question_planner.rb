# frozen_string_literal: true

class QuestionPlanner
  attr_reader :questions

  HEADER = 'Questions:'
  def initialize
    @questions = [[HEADER]]
  end

  def add_to_plan(user_input)
    #question_number = questions.length.to_s
    bulleted_question =  '• ' + user_input
    questions.push([bulleted_question])
    format_for_display
  end

  def format_for_display
    pp questions
    questions.join("\n")
  end
end
