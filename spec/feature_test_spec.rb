# frozen_string_literal: true

require 'lesson_planner'

describe 'Feature test:' do
  it 'user can add a resource to plan' do
    lesson_planner = LessonPlanner.new
    resource_planner = ResourcePlanner.new

    lesson_planner.write(resource_planner, 'Pencils')
    lesson_planner.write(resource_planner, 'Paint')

    expect { lesson_planner.display }.to output("Resources:\nPencils\nPaint").to_stdout
  end

  it 'user can add an objective to plan' do
    lesson_planner = LessonPlanner.new
    objective_planner = ObjectivePlanner.new

    lesson_planner.write(objective_planner, 'To write their name')
    lesson_planner.write(objective_planner, 'To identify the letters of thier name')

    expect { lesson_planner.display }.to output("Objectives:\n1. To paint themselves\n2. To mix colours").to_stdout
  end

  it 'user can add questions to plan' do
    lesson_planner = LessonPlanner.new
    question_planner = QuestionPlanner.new

    question1 = 'What could you do next?'
    question2  = 'Why did you use this colour?'
    lesson_planner.write(question_planner, question1)
    lesson_planner.write(question_planner, question2)

    expect { lesson_planner.display }.to output("Questions:\n1.#{question1}\n2. #{question2}").to_stdout
  end
end 