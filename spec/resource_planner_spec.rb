require 'resource_planner'
describe ResourcePlanner do

  describe '#header' do
    it 'can get its title' do
      resource = ResourcePlanner.new

      expect(resource.heading).to eq "Resources:"
    end 
  end

  describe '#add_resource'
end

describe '#add' do
  it 'adds a resource to plan' do
        resource_planner = ResourcePlanner.new
        
        expect(resource_planner.add_plan('Pencils')).to eq ['Pencils']
  end
end 