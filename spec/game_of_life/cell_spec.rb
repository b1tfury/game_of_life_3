require 'spec_helper'

module GameOfLife
  describe Cell do
    context 'birth' do
      let(:cell1) { Cell.new_alive_cell }

      it 'should produce a alive cell' do
        expect(cell1.is_alive?).to eq(true)
      end
    end
  end
end