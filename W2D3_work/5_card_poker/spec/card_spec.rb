require 'rspec'
require 'card'
describe Card do
    
    subject(:card) {Card.new("hearts", 9)}
        describe "#initialize" do
            it "should accept a suite and a num as arguments" do
                card
            end
            it "assigns the suite" do
                suite = card.instance_variable_get(:@suite)
                expect(suite).to eq("hearts")
                expect(suite).to be_a(String)
            end

    #     it "assigns the value" do 
    #         expect(card.value).to eq(9)
    #     end

    #     it "should be an instance of the Card class" do
    #         expect(card).to be_instance_of(Card)
    #     end
    # end

    # describe "#suite" do
    #     it "should get the card's suite" do
    #         expect
    # end
        end
end