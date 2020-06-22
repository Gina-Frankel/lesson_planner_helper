require 'lesson_planner'

describe 'Feature test:' do
    it 'user can add a resource to plan' do
      lesson_planner = LessonPlanner.new
      resource_planner = ResourcePlanner.new
      
      lesson_planner.write(resource_planner,'Pencils')
      lesson_planner.write(resource_planner,'Paint')

      expect{ lesson_planner.display }.to output("Resources:\nPencils\nPaint").to_stdout
    end

    
  end
