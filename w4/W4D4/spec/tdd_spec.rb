require 'tdd'

describe Array do
    describe '#my_uniq' do
        it 'returns the unique elements in the order in which they first appear' do
            expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
            # receives
        end
    end

    describe '#two_sum' do
        it 'finds all pairs of positions where the elements of the positions sums to zero' do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2,3]])
        end

        it 'sorts the pairs dictionary-wise' do 
            expect([-1, 0, 2, -2, 1].two_sum).not_to eq([[2,3], [0,4]])
        end 
    end

    describe '#my_transpose' do
        subject(:array) { Array.new( [[0, 1, 2],[3, 4, 5],[6, 7, 8]]) }
        it 'converts between row oriented and column oriented representations' do
            expect(array.my_transpose).to eq( [ [0,3,6],[1,4,7],[2,5,8] ] )
        end
    end    

    describe '#stock_picker' do
        let(:array) { [5, 10, -5, 0, 45] }
        it 'outputs the most profitable pair of days to buy and sell' do
            expect(array.stock_picker).to eq([2,4]) 
        end
        
        it 'must buy the stock before it sells the stock' do
            expect(array.stock_picker[0]).to be < array.stock_picker[1]
        end
    end

end

describe TowersOfHanoi do
    subject(:tower){ TowersOfHanoi.new(4) }
    describe '#initialize' do 
        #create a board, create the board with that num
        #board needs length of three

        #board[0] needs same number as passed in
        #board[1] and [2].empty
        #validate argument as integer and makes sure it's received

        it "raises an error if num is not an integer" do
            expect{ TowersOfHanoi.new("four") }.to raise_error("Must be an integer!")
        end

        it "contains a board variable with three arrays" do
            expect(tower.board).to eq([ [0,1,2,3],[], [] ])
            expect(tower.board.length).to eq(3)
        end

        it "it has a length of num in board's first array" do
            expect(tower.board[0].length).to be(4)
            
        end

        it "it has a length of zero in board's other arrays" do
            expect(tower.board[1].length).to be(0)
            expect(tower.board[2].length).to be(0)
        end
    end

    describe '#move' do 
        subject(:board) { TowersOfHanoi.new(4) }
        let(:empty_array) { [] }

        # let(:array) { [0,1,2,3]}
        
        # it 'will take in an input from the user'
        it 'should raise an error if they choose to take from an array that is empty' 
        # do
            # expect{ empty_array }.to raise_error('Choose another rod!')
        # end

        it 'will access a rod that has something on it' 
        # do 
            # expect(board[0])
        # end

        # context 'it will pop from that rod'
        
        it 'will put it on one of the rods'
            # context 'it will shovel it on to that rod'
        
        # choose one of three indices
        # choose one to put it in
        # pop from one as long as it has something in it
        # shovel in to the one they choose
    end

    describe '#won?' do
        subject(:board) { TowersOfHanoi.new(4) }
        # let(:winner2) { board.board[1] = [0,1,2,3] }
        # let(:winner3) { board.board[2] = [0,1,2,3] }

        it 'returns true if the second or third rod is full and in order' do
            board.board[2] = [0,1,2,3] 
            board.board[1] = [0,1,2,3] 
            expect(board.won?).to be_truthy
            expect(board.won?).to be_truthy
        end
    end

end

=begin
    queue = [[4,3,2,1],[],[]]
    choose a index
    place in an index
    game[]

    win is [4321] in order and not in the first index
    user can only pop 

=end

