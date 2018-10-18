RSpec.describe Block do
  let(:block) { Block.new }

  describe 'valid?' do
    context 'with a valid block' do
      let(:block) do
      end

      it 'should return true' do
        expect(block.valid?).to be(true)
      end
    end
  end
end
