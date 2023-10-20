require "./lib/main.rb"

describe "#caesar_cipher" do
    it "returns 'Bmfy?'" do
        expect(caesar_cipher("What?", 5)).to eql("Bmfy?")
    end
    it "returns 'Olssv, tf uhtl pz Vkpszvu'" do
        expect(caesar_cipher("Hello, my name is Odilson", 7)).to eql("Olssv, tf uhtl pz Vkpszvu")
    end
    it "returns 'Iovvyg'" do
        expect(caesar_cipher("Yellow", 10)).to eql("Iovvyg")
    end
end