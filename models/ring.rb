# A linked ring class, wouldn't work with duplicates.
class Ring
  def initialize(array)
    @ring = array
  end

  def add_after(node, value)
    @ring.insert(@ring.index(value) + 1, value)
  end

  def next(value)
    if @ring.last == value
      @ring.first
    else
      @ring[@ring.index(value) + 1]
    end
  end

  def previous(value)
    if @ring.first == value
      @ring.last
    else
      @ring[@ring.index(value) - 1]
    end
  end
end
