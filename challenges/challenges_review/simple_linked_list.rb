=begin
Problem
create Element class
contain instance variables `datum` and `next`
methods:
datum
next
tail?

Create a simple linked list class
- singly linked list
- each element should be an instance of Element class 
- data contains n; 1 <= n <= 10
- next points to next element in LL
- LIFO stack

methods
- reverse the linked list
- convert to array
- convert from array
- size
- empty?
- push
- pop
- peek
- head


Example
element = Element.new(1)
element.datum == 1

list = SimpleLinkedList.new
list.push(1)
list.size == 1
list.peek == 1
list.push(2)
list.head.datum = 2
list.head.next.datum = 1

Data structure
custom linked list class

Algo
create Element class

create SimpleLinkedList class

LIFO: we push to and pop from "front"
- update size for every push or pop

@head = nil
@size = 0

=end

class Element
  attr_reader :datum
  attr_accessor :next

  def initialize(datum, next_element = nil)
    @datum = datum
    @next = next_element
  end

  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  attr_reader :head, :size

  def initialize
    @head = nil
    @size = 0
  end

  def empty?
    size == 0
  end

  def push(datum)
    oldhead = @head
    @head = Element.new(datum)
    @head.next = oldhead

    self.size += 1
  end

  def pop
    res = @head
    @head = @head.next

    self.size -= 1

    res.datum
  end

  def peek
    head.datum if head
  end

  def to_a
    cur = @head
    res = []
    while cur
      res << cur.datum
      cur = cur.next
    end
    res
  end

  def reverse
    res = self.class.new
    cur = @head
    while cur
      res.push(cur.datum)
      cur = cur.next
    end
    res
  end

  def self.from_a(arr)
    (arr || []).reverse.each_with_object(new) { |x, res| res.push(x) }
  end

  private

  attr_writer :head, :size
end

p list = SimpleLinkedList.from_a([1, 2])
