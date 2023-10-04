func bubbleSort(integers: inout[Int]) {
    guard integers.count >= 2 else {
    return
}

    var didSwap: Bool
    repeat {
        print(integers)
        didSwap = false

        for rightIndex in 1 ..< integers.count {
            let leftIndex = rightIndex - 1
            if integers[leftIndex] > integers[rightIndex] {
                swap(integers: &integers, firstIndex: leftIndex, secondIndex: rightIndex)
                didSwap = true
            }
        }
    } while didSwap
}
