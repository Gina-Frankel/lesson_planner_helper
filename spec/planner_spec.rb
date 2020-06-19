require 'planner'

describe Planner do
  it "returns a welcome message" do
    planner = Planner.new
    welcome_message = 'Welcome to the Teaching Planning helper'

    expect(planner.get_welcome_message).to eq welcome_message
  end 

it 'returns '

end