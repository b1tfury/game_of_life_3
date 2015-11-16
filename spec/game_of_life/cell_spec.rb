require 'spec_helper'

module GameOfLife
  describe Cell do
    let(:cell1) { Cell.new_alive_cell }
    let(:cell2) { Cell.new_dead_cell }

    
    context 'birth' do
      it 'should produce a alive cell' do
        expect(cell1.is_alive?).to eq(true)
      end

      it 'dead cell should not be alive' do
        expect(cell2.is_alive?).to eq(false)
      end

      it 'should produce a dead cell also' do
        expect(cell2.is_dead?).to eq(true)
      end

      it 'live cell should not be dead' do
        expect(cell1.is_dead?).to eq(false)
      end
    end
  end
end