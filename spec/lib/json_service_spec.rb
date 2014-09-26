require_relative '../spec_helper.rb'
require_relative '../../lib/json_service'

describe Service do
  before :each do
    @txt = "Cupcake ipsum dolor sit amet chocolate cake.  Chocolate bar sweet roll gingerbread 
           brownie marshmallow cheesecake cookie."
    @service = Service.new(@txt)
  end

  describe "#initialize" do
    it "creates a Service object" do
      expect(@service).to be_an_instance_of Service
    end

    it "takes a text input" do
      expect(@service.txt).to_not be_empty
    end
  end

  describe "#accept_input" do
    it "accept text input, and converts it to JSON" do
      expect(@service.accept_input).not_to eq(@txt) 
    end
  end
  
end