require 'planner'

describe Planner do
  describe "#get_welcome_message" do 
    it "returns a welcome message" do
      planner = Planner.new
      welcome_message = 'Welcome to the Provocation Station Planning Tool'

      expect(planner.get_welcome_message).to eq welcome_message
    end 
  end 

    describe '#add' do
      it 'adds resources' do
        planner = Planner.new 
        

        expect(planner.add("pencils")).to eq "pencils"
    end 
  end 
end 
