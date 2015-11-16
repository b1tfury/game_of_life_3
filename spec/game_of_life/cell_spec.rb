require 'spec_helper'

module GameOfLife
  describe Cell do
    let(:cell1) { Cell.new_alive_cell }
    let(:cell2) { Cell.new_dead_cell }

    def build_neighbours(live_number)
      neighbours = []
      dead_number = 8 - live_number
      while live_number > 0
        neighbours << Cell.new_alive_cell
        live_number -= 1
      end

      while dead_number > 0
        neighbours << Cell.new_dead_cell
        dead_number -= 1
      end
      neighbours
    end

    context 'birth' do
      it "should produce a alive cell" do
        expect(cell1.is_alive?).to eq(true)
      end

      it "dead cell should not be alive" do
        expect(cell2.is_alive?).to eq(false)
      end

      it "should produce a dead cell also" do
        expect(cell2.is_dead?).to eq(true)
      end

      it "live cell should not be dead" do
        expect(cell1.is_dead?).to eq(false)
      end
    end

    context "next generation" do
      [0,1].each do |number|
        it "alive cell should die if #{number} neighbours are alive" do
          expect(cell1.next_generation(build_neighbours(number)).is_dead?).to eq(true)
        end
      end

      [2, 3].each do |number|
        it "alive cell should stay alive if #{number} neighbours are alive" do
          expect(cell1.next_generation(build_neighbours(number)).is_alive?).to eq(true)
        end
      end
    end
  end
end