// Here i'm practicing trees.
// My implementaion lays in the /Sources folder

import Foundation

func makeBeverageTree() -> TreeNode<String> {
    let beverages = TreeNode("Beverages")
    
    let hot = TreeNode("Hot")
    let cold = TreeNode("Cold")
    
    let tea = TreeNode("Tea")
    let coffee = TreeNode("Coffee")
    let chocolate = TreeNode("Chocolate")
    
    let blackTea = TreeNode("Black tea")
    let greenTea = TreeNode("Green tea")
    let bubbleTea = TreeNode("Bubble tea")
    
    let soda = TreeNode("Soda")
    let iceLatte = TreeNode("Ice latte")
    let milk = TreeNode("Milk")
    
    let gingerAle = TreeNode("Ginger ale")
    let bitterLemon = TreeNode("Bitter lemon")

    beverages.add(hot)
    beverages.add(cold)
    
    hot.add(tea)
    hot.add(coffee)
    hot.add(chocolate)
    
    cold.add(soda)
    cold.add(iceLatte)
    cold.add(milk)
    
    tea.add(blackTea)
    tea.add(greenTea)
    tea.add(bubbleTea)
    
    soda.add(gingerAle)
    soda.add(bitterLemon)
    
    return beverages
}

let tree = makeBeverageTree()
//tree.forEachDepthFirst { print($0.value) }
//tree.forEachLevelOrder { print($0.value) }

if let searchResult = tree.search("Ginger ale") {
    //print("A \(searchResult.value) found in the menu")
}

// Challenge 1: Print tree in a level order
func printLevels(tree: TreeNode<String>) {
    var queue = Queue<TreeNode<String>>()
    var nodesLeftInCurrentLevel = 0
    queue.enqueue(tree)
    
    while !queue.isEmpty {
    }
}

printLevels(tree: tree)
