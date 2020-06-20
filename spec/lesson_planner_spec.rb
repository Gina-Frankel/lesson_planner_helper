# frozen_string_literal: true

require 'lesson_planner'

describe LessonPlanner do
  describe '#get_welcome_message' do
    it 'returns a welcome message' do
      lesson_planner = LessonPlanner.new
      welcome_message = 'Welcome to the Provocation Station Planning Tool'

      expect(lesson_planner.get_welcome_message).to eq welcome_message
    end
  end

  describe '#write' do
    it 'adds a resource to plan' do
          lesson_planner = LessonPlanner.new
          resource_planner = instance_double("ResourcePlanner", add_to_plan: ["Pencils"]) 
    
          expect(lesson_planner.write(resource_planner, 'Pencils')).to eq ['Pencils']
    end


  end
end 



#   describe '#get_welcome_message' do
#     it 'returns a welcome message' do
#       lesson_planner = LessonPlanner.new
#       welcome_message = 'Welcome to the Provocation Station Planning Tool'

#       expect(lesson_planner.get_welcome_message).to eq welcome_message
#     end
#   end

#   describe '#add_resource' do
#     it 'adds a resource to plan' do
#       lesson_planner= LessonPlanner.new

#       expect(lesson_planner.add_resource('Pencils')).to eq 'Pencils'
#     end

#     it 'adds multiple resources' do
#       lesson_planner = LessonPlanner.new

#       lesson_planner.add_resource('Pencils')
#       expect(lesson_planner.add_resource('Paint')).to eq "Pencils\nPaint"
#     end
#   end

#   describe '#add_question' do
#     it 'adds a question to Lessonplanner' do
#       lesson_planner = LessonPlanner.new  

#       expect(lesson_planner.add_question('What else could you add?')). to eq 'What else could you add?'
#     end

#     it 'adds multiple questions to Lessonplanner' do
#       lesson_planner = LessonPlanner.new  

#       lesson_planner.add_question('What else could you add?')
#       expect(lesson_planner.add_question('Why did you choose those materials?')). to eq "What else could you add?\nWhy did you choose those materials?"
#     end
#   end

#   describe '#add_objective' do
#     it 'adds an objective to Lessonplanner' do
#       lesson_planner = LessonPlanner.new  
      
#       objective = "To learn representational skills by drawing a robot"
#       expect(lesson_planner.add_objective(objective)). to eq objective
#     end

#     it 'adds multiple objectives to Lessonplanner' do
#       lesson_planner = LessonPlanner.new  
      
#       objective_1 = "To learn representational skills by drawing a robot"
#       objective_2 = "To learn about colour mixing by mixing primary colours together"
     
#       lesson_planner.add_objective(objective_1)
#       expect(lesson_planner.add_objective(objective_2)). to eq "#{objective_1}\n#{objective_2}"
#     end
    
#   end
# end
