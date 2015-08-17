class Node

	attr_accessor :node, :next

	def initialize(node)
		@node = node
	end


	def self.node_list(node, msg = nil)
		msg ||= ""
		return msg[0..-4] if node.nil?
		node_list(node.next, msg << "#{node.node} -> ")
	end

	def self.reverse(node)
		return node if node.next.nil?

		head = node.next
		swap = node
		node.next = nil

		link = head.next

		while link != nil
			head.swap = swap
			swap = head
			head = link
			link = link.next
		end

		head.next = swap
		head

	end

node = Node.new(1)
1.upto(99) do |i|
  eval("Node.last(node).next = Node.new(i + 1)")
end

puts Node.node_list(node)
puts Node.node_list Node.reverse(node)


end