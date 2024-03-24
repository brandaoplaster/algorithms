# frozen_string_literal: true

require_relative "../node/node"

class LinkedList
  def initialize
    @elem = nil
  end

  def add(value)
    if @elem.nil?
      @elem = Node.new(value)
    else
      current = @elem
      current = current.next until current.next.nil?
      current.next = Node.new(value)
    end
  end

  def remove(value)
    current = @elem
    if current.value == value
      @elem = current.next
    else
      while current.next.nil?
        if current.next.value == value
          current.next = current.next.next
          break
        end
        current = current.next
      end
    end
  end

  def show
    current = @elem
    if current.nil?
      puts "Empty list"
    end

    while current
      puts current.value
      current = current.next
    end
  end

  def search(value)
    current = @elem
    while current
      return current if current.value == value

      current = current.next
    end
    nil
  end
end
