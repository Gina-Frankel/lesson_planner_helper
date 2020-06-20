require 'Planner'

describe 'user can add a resource' do
  xdescribe '#add_resource' do
    it 'adds a resource to plan' do
      lesson_planner = LessonPlanner.new

      expect{lesson_planner.add_resource('Pencils')}.to output("Resources:\nPencils\nPaint").to_stdout
    end
  end
end 
