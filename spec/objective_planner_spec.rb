require 'objective_planner'

describe ObjectivePlanner do
  it 'adds one numbered resource to array' do
    objective_planner = ObjectivePlanner.new

    Subheading = "Objectives:"
    objective = "To add one digit numbers"
    expect(objective_planner.add_to_plan(objective)).to eq "#{Subheading}\n1. #{objective}"
  end
end