require 'rspec'
require 'tdd_project'

describe "my_unique" do
    let(:array) {[1, 2, 1, 3, 3]}
    it "returns an array of all unique elements in the order that they appear" do
        expect( my_unique(array) ).to eq([1, 2, 3])
    end

    it "should not use .uniq method" do
        expect(array).not_to receive(:uniq)
        my_unique(array)
    end
end

describe Array do
    describe "#two_sum" do 
    let(:arr) {arr = [-1, 0, 2, -2, 1]}
        it "should return an array of indices whos elements add up to 0" do
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])
        end

        it "should be in sorted order as the elements appear" do
            expect(arr.two_sum).to eq([[0, 4], [2, 3]].sort)
        end
    end   

    describe "#my_transpose" do
    let(:arr) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]] }

    it "should return an array that will convert between the row and column 
    representations" do 
        expect(arr.my_transpose).to eq ([[0, 3, 6],
                                         [1, 4, 7],
                                         [2, 5, 8]])
    end 
        it "should not use the Array#transpose method" do
            expect(arr).not_to receive(:transpose)
            arr.my_transpose
    end 

    end

    describe "#stock_picker" do
    let(:stock) {[100, 112, 25, 400, 500, 1]}
        it "should return the most profitable pair of days on which to first
        buy the stock and sell it" do 
            expect(stock_picker(stock)).to eq( [2, 4] )
        end

        it "days of selling and days of buying have to be ordered so that one
        can not sell before they purchase" do
            expect(stock_picker(stock)).to eq( stock_picker(stock).sort )
        end
    end

end


