func insertionSort(integers: inout[Int]) {
    for sourceIndex in 1 ..< integers.count {
        print(integers)
        let sourceElement = integers[searchIndex]
        var moveIndex = sourceIndex - 1
        
        while ((moveIndex >= 0) && (integers[moveIndex] > sourceElement)) {
            swap(integers: &integers, firstIndex: moveIndex + 1, secondIndex: moveIndex)
            moveIndex -= 1
        }
        integers[moveIndex + 1] = sourceElement
    }
    print(integers)
}
