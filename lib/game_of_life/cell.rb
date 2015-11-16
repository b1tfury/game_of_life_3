module GameOfLife
  class Cell
    def initialize(state)
      @state = state
    end

    def self.new_alive_cell
      self.new('ALIVE')
    end

    def self.new_dead_cell
      self.new('DEAD')
    end

    def is_alive?
      @state == 'ALIVE'
    end

    def is_dead?
      @state == 'DEAD'
    end

    def next_generation(neighbours)
      Cell.new_dead_cell
    end
  end
end