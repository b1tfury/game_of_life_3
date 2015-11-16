require 'spec_helper'

module GameOfLife
  describe Cell do
    context 'birth' do
      let(:cell1) { Cell.new_alive_cell }
      let(:cell2) { Cell.new('DEAD') }

      it 'should produce a alive cell' do
        expect(cell1.is_alive?).to eq(true)
      end

      it 'dead cell should not be alive' do
        expect(cell2.is_alive?).to eq(false)
      end
    end
  end
end