require 'objective_planner'

describe ObjectivePlanner do
  it 'adds a numbered resource to array' do
    objective_planner = ObjectivePlanner.new

    header = "Objectives:"
    objective = "To add one digit numbers"
    expect(objective_planner.add_to_plan(objective)).to eq objective_planner
  end

  it 'adds multiple numbered resources to array' do
    objective_planner = ObjectivePlanner.new

    header = "Objectives:"
    objective1 = "To indentify numerals"
    objective2 = 'To count to 10'
    objective_plan = "#{header}\n• #{objective1}\n• #{objective2}"
    objective_planner.add_to_plan(objective1)
    
    expect(objective_planner.add_to_plan(objective2)).to eq objective_planner
    expect(objective_planner.objectives).to eq [[header],['• ' + objective1],['• ' + objective2] ]
  end
end