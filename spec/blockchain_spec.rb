require "spec_helper"
require 'karminer'

RSpec.describe Blockchain do
  let(:blockchain) { Blockchain.new }

  describe 'valid?' do
    context 'with valid @blocks' do
      it 'returns true' do
        expect(blockchain.valid?).to be(true)
      end
    end
  end
end
