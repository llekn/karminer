RSpec.describe Transaction do
  let(:transaction) { Transaction.new }

  describe 'valid?' do
    context 'with a valid transaction' do
      let(:transaction) do
      end

      it 'should return true' do
        expect(transaction.valid?).to be(true)
      end
    end
  end
end
