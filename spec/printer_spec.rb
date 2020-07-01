require 'printer'

describe Printer do
  it 'prints' do
    printer = Printer.new
    question_planner = instance_double("QuestionPlanner", :questions => "What can you do next?")

    expect{printer.output([question_planner])}.to output("What can you do next?\n").to_stdout
  end 
  
end

# needs  to be mocked 