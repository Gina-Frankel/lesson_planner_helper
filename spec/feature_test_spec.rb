require 'Planner'

describe 'Feature test:' do
    it 'user can add a resource to plan' do
      lesson_planner = LessonPlanner.new
      resource_planner = ResourcePlanner.new

      expect{ lesson_planner.add(resource_planner,'Pencils') }.to output("Resources:\nPencils\nPaint").to_stdout
    end

    
  end
