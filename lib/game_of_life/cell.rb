module GameOfLife

  #job : A cell is either alive ot dead . Uing its neighbours , cell should know give its status in next generation

  class Cell

    attr_reader :state

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
      live_count  = 0
      neighbours.each do |cell|
        if cell.is_alive?
          live_count += 1
        end
      end
      if self.is_alive?
        if live_count == 2 || live_count == 3
          self
        else
          @state = 'DEAD'
          self
        end
      else
        if live_count == 3
          @state = 'ALIVE'
          self
        else
          self
        end
      end
    end

    def hash
      @state.hash
    end

    def ==(other)
      if other.is_a?(self.class)
        self.state == other.state
      else
        false
      end
    end
  end
end