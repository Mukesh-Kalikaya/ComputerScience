func selectionSort(integers: inout[Int]) {
    for targetIndex in 0 ..< integers.count - 1 {
        print(integers)
        var minimumIndex = targetIndex

        for searchIndex in targetIndex + 1 ..< integers.count {
            if integers[searchIndex] < integers[minimumIndex] {
                minimumIndex = searchIndex
            }
        }
        swap(integers: &integers, firstIndex: minimumIndex, secondIndex: targetIndex)
    }
    print(integers)
}
