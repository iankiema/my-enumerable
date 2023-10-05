require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  attr_accessor :list

  def initialize(*elements)
    @list = elements
  end

  def each
    @list.each { |item| yield(item) }
  end
end
