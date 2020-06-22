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

  it 'user can add an objective to a plan' do
    lesson_planner = LessonPlanner.new
    objective_planner = ObjectivePlanner.new

    lesson_planner.write(objective_planner, 'To write their name')
    lesson_planner.write(objective_planner, 'To identify the letters of thier name')

    expect { lesson_planner.display }.to output("Objectives:\n1. To write their name\n2. To identify the letters of thier name").to_stdout
  end
end
