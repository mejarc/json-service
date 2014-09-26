require_relative '../spec_helper.rb'
require_relative '../../lib/json_service'

describe Service do
  before :all do
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

  describe "#treat_input" do
    it "converts double spaces to hyphens" do
      result = @service.treat_input('Cupcake  ipsum dolor sit')
      expect(result).to eq('Cupcake--ipsum dolor sit')
    end
  end

  describe "#treat_output" do
    it "converts a hyphen to whitespace" do
      result = @service.treat_output('Cupcake--ipsum-dolor-sit')
      expect(result).to eq('Cupcake ipsum-dolor-sit')
    end
  end

  describe "#accept_input" do
    before :all do
      @hsh = @service.accept_input
    end

    it "accept text input, and converts it to a hash" do
      expect(@hsh).to have_key("output")
      expect(@hsh).to have_key("diff")
    end
    it "lists the corrections made" do
      expect(@hsh["diff"]).not_to be_empty 
    end
  end

end