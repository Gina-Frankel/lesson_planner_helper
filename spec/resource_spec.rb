require 'resource'
describe ResourcePlanner do

  describe '#header' do
    it 'can get its title' do
      resource = ResourcePlanner.new

      expect(resource.heading).to eq "Resources:"
    end 
  end
end