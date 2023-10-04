func swap(integers: inout[Int], firstIndex: Int, secondIndex: Int) {
    precondition((0 ..< integers.count).contains(firstIndex))
    precondition((0 ..< integers.count).contains(secondIndex))

    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
}

// var unsorted = [7, -12, -2000, 3, -99, 10_015, 4, -2065]
// swap(integers: &unsorted, firstIndex: 3, secondIndex: 5)
// print(unsorted)
