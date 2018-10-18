require "spec_helper"
require 'karminer'

RSpec.describe Karminer::Blockchain do
  let(:blockchain) { Karminer::Blockchain.new }

  describe 'valid?' do
    context 'with valid @blocks' do
      it 'returns true' do
        expect(blockchain.valid?).to be(true)
      end
    end
  end
end

RSpec.describe Karminer::Transaction do
  let(:transaction) { Karminer::Transaction.new }

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

RSpec.describe Karminer::Block do
  let(:block) { Karminer::Block.new }

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
