# frozen_string_literal: true

require 'lesson_planner'
require 'objective_planner'
require 'question_planner'
require 'resource_planner'

describe 'Feature test:' do
  xit 'user can add a resource to plan' do
    lesson_planner = LessonPlanner.new
    resource_planner = ResourcePlanner.new

    lesson_planner.write(resource_planner, 'Pencils')
    lesson_planner.write(resource_planner, 'Paint')

    expect { lesson_planner.display }.to output("Resources:\n• Pencils\n• Paint").to_stdout
  end

  xit 'user can add an objective to plan' do
    lesson_planner = LessonPlanner
    objective_planner = ObjectivePlanner.new

    lesson_planner.write(objective_planner, 'To paint themselves')
    lesson_planner.write(objective_planner, 'To mix colours')

    expect { lesson_planner.display }.to output("Objectives:\n• To paint themselves\n• To mix colours").to_stdout
  end

  it 'user can add questions to plan' do
    lesson_planner = LessonPlanner.new
    #question_planner = QuestionPlanner.new

    question1 = 'What could you do next?'
    question2 = 'Why did you use this colour?'
    lesson_planner.write(QuestionPlanner.new, question1)
    lesson_planner.write(QuestionPlanner.new, question2)

    expect { lesson_planner.display }.to output("• #{question1}\n• #{question2}\n").to_stdout
  end

xit 'user can add resources, objectives and questions to plans' do
  lesson_planner = LessonPlanner.new
  resource_planner = ResourcePlanner.new
  objective_planner = ObjectivePlanner.new
  question_planner = QuestionPlanner.new


  objective = 'To paint themselves'
  resource = 'Paints'
  question = 'What could you do next?'
  lesson_planner.write(objective_planner, objective)
  lesson_planner.write(resource_planner, resource)
  lesson_planner.write(question_planner, question)

  plan = "Objectives:\n• #{objective}\n Resources\n• #{resource}\nQuestions:\n• #{question}"
  expect { lesson_planner.display }.to output(plan).to_stdout
end

end
