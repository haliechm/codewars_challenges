/*
 Square Challenge from codewars.com
 Created by: Halie Chmura
 */

import UIKit


/*
 Purpose: Determines the smallest number of squares in a rectangle and their respective dimensions
 
 Input: Length and Width of any Rectangle
 Output: Number of Squares in given rectangle & Dimension of each individual square
 
 Example:
    -> Parameters 6, 3
    -> A 6x3 Rectangle contains two 3x3 Squares
    -> Output: 2 squares | Dimension of each square 3 3
 
 Example2:
    -> Parameters 6, 4
    -> A 6x4 Rectangle contains one 4x4 Square and two 2x2 Squares
    -> Output: 3 squares | Dimension of each square 4 2 2
 */

func squareSolver(_ length:Int, _ width:Int) {
    var answer = ""
    var lesser:Int
    var greater:Int
    var temp:Int
    var numberOfSquares:Int = 0
    
    if (length > width) {
        lesser = width
        greater = length
    } else {
        lesser = length
        greater = width
    }
   
    while ((lesser >= 1 && greater >= 1)) {
        numberOfSquares+=1
        answer += " " + String(lesser)
        greater -= lesser
        
        // Compares and tracks two dimensions
        if (greater < lesser) {
            temp = greater
            greater = lesser
            lesser = temp
        }
    }
    
    print("Number of squares: " + String(numberOfSquares))
    print("Dimension of each of the \(numberOfSquares) squares:" + answer)
    
}

// Test Cases
squareSolver(17, 4)
squareSolver(6, 3)
squareSolver(6, 4)

