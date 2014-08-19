class Node 
  attr_accessor :val, :next_node
  
  def initialize(val = nil, next_node = nil)
    @val = val
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head

  def initialize(head)
    @head = head
  end
end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node1.next_node = node2
node2.next_node = node3
node3.next_node = node4
linked_list = LinkedList.new(node1)

def reverse_linked_list(linked_list)
  prev = nil
  curr = linked_list.head
  next_n = curr.next_node
  flag = true

  while flag == true 
    flag = false if next_n == nil # I want to run through once when next_n == nil
    curr.next_node = prev
    prev = curr
    curr = next_n
    if next_n != nil 
      next_n = next_n.next_node
    end
  end 
end

reverse_linked_list(linked_list)
p linked_list.head
p node2
p node3 
p node4

