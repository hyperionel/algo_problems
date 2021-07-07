def invert_binary_tree(tree)
  return invert_binary_tree_helper(tree)
end

def invert_binary_tree_helper(tree)
  tmp_val = tree.left.value
  tree.left.value = tree.right.value
  tree.right.value = tmp_val
  invert_binary_tree(tree.left)
  invert_binary_tree(tree.right)  
end