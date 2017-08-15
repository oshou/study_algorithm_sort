# ツリー構造


class Tree
  attr_accessor :value,:children

  def initialize(value,children=[])
    @value = value
    @children = children
  end

  # dfs(深さ優先探索)
  def dfs(num)
    return true if @value = num
    @children.each {|c|
      return true if c.dfs(num)
    }
    false
  end

  # bfs(幅優先探索)
  def bfs(num)
    queue = Queue.new
    queue.enq(num)
    puts queue
    while(queue.size!=0)
      self = queue.shift
      puts @value
      @children.each do |child|
        queue.push(child)
      end
    end
  end
end

t1 = Tree.new(1,[
  Tree.new(2)
  Tree.new(3)
  Tree.new(4,[
    Tree.new(5)
    Tree.new(6)
  ])
])
t1.dfs(5)
t1.bfs(5)
