require 'question_planner'
describe QuestionPlanner do
  it 'adds a numbered question as an array to an array' do
    question_planner = QuestionPlanner.new

    HEADER = "Questions:"
    objective = "What else can you add?"
    expect(question_planner.add_to_plan(objective)).to eq "#{HEADER}\n1. #{objective}"
  end
end