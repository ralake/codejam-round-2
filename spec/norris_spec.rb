require 'norris'

  describe RubyWrapper do
    
    it "returns a string containing Jin" do
      expect(RubyWrapper.chucknorrisify(342, "Jin")).to include("Jin") 
    end

  end