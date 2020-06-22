require 'question_planner'
describe QuestionPlanner do
  it 'adds a numbered question as an array to an array' do
    question_planner = QuestionPlanner.new

    HEADER = "Questions:"
    question = "What else can you add?"
    expect(question_planner.add_to_plan(question)).to eq "#{HEADER}\n• #{question}"
  end
  it 'adds  numbered question as an array to an array' do
    question_planner = QuestionPlanner.new
    HEADER = "Questions:"
    question1 = "What else can you add?"
    question2 = "Why did you chose that material?"

    question_planner.add_to_plan(question1)

    expect(question_planner.add_to_plan(question2)).to eq "#{HEADER}\n• #{question1}\n• #{question2}"
  end
end