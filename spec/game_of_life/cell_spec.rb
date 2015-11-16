require 'spec_helper'

module GameOfLife
  describe Cell do
    context 'birth' do
      let(:cell1) { Cell.new }

      it 'should produce a live cell' do
        expect(cell1.is_alive?).to eq(true)
      end
    end
  end
end