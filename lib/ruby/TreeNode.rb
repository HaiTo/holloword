#coding:utf-8
### Nodeは一つ下のNodeのNameを知っている必要がある

Class TreeNode 
  @node_name,@node_ary
  def initialize name
    @node_name = name
    @node_ary = Array.new
  end
  
  def set_node node
    @node_ary << node
  end

  def get_nodes
    @
  end
end
