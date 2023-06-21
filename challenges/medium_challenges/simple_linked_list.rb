class Element
  attr_reader :datum, :next

  def initialize(datum, next_element = nil)
    @datum = datum
    @next = next_element
  end

  def tail?
    self.next.nil?
  end
end

class SimpleLinkedList
  attr_reader :size, :head

  def initialize
    @size = 0
    @head = nil
  end

  def push(datum)
    self.head = Element.new(datum, head)
    self.size += 1
  end

  def pop
    return nil unless head
    res = peek
    self.head = head.next
    self.size -= 1
    res
  end

  def peek
    head ? head.datum : nil
  end

  def empty?
    size.zero?
  end

  def reverse
    res = self.class.new
    cur = head
    while cur
      res.push(cur.datum)
      cur = cur.next
    end
    res
  end

  def to_a
    arr, cur = [], head
    while cur
      arr << cur.datum
      cur = cur.next
    end
    arr
  end

  def self.from_a(arr)
    (arr.reverse.each_with_object(self.new) { |e, res| res.push(e) } if arr) || self.new
  end

  private

  attr_writer :size, :head
end

if __FILE__ == $0
  list = SimpleLinkedList.from_a([1])
  p list.to_a
  p list.size
  p list.peek
end
