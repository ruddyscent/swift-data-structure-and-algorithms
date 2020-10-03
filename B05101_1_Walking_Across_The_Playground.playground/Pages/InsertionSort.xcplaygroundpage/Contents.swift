/*:
 # Chapter 1
 ## Walking Across The Playground
 */

/*:
 # InsertionSort
 */
import Cocoa

func makeList(n: Int) -> [Int] {
    var result: [Int] = []
    for _ in 0..<n {
        result.append(Int(arc4random_uniform(20) + 1))
    }
    return result
}

func insertionSort(alist: inout [Int]) {
    for i in 1..<alist.count {
        let tmp = alist[i]
        var j = i - 1
        while j >= 0 && alist[j] > tmp {
            alist[j + 1] = alist[j]
            j = j - 1
        }
        alist[j + 1] = tmp
    }
}

for i in 1...10 {
    var myRandomList: [Int] = makeList(n: i * 100)
    let start = NSDate()
    insertionSort(alist: &myRandomList)
    let end = NSDate()
    let timeInterval: Double = end.timeIntervalSince(start as Date)
    
    print("Array size = \(myRandomList.count), time = \(timeInterval)/sec")
}

/*:
 
 [Next](@next)
 
 The license for this document is available [here](License).
 */
