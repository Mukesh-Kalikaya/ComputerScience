// Create a function called isPrime() that accepts a single, integer parameter named 'maybePrime'
// The function should return true if and only if 'maybePrime' is prime
// Any number less than two should not be considered prime

func isPrime(maybePrime: Int) -> Bool {
    var evenDivisionCount = 0

    if maybePrime < 2 {
        return false
    }
    
    for divisor in 1 ... maybePrime {
        if maybePrime % divisor == 0 {
            evenDivisionCount += 1
        }
    }

    return evenDivisionCount == 2
}

// Create a function called nextPrime(currentNumber: Int) which returns the next prime number after currentNumber

func nextPrime(currentNumber: Int) -> Int {
    var maybePrime = currentNumber + 1

    while !isPrime(maybePrime: maybePrime) {
        maybePrime += 1
    }

    return maybePrime
}

// Previous Prime

func previousPrime(currentNumber: Int) -> Int? {
    var maybePrime = currentNumber - 1

    if maybePrime < 2 {
        return nil
    }
    
    while !isPrime(maybePrime: maybePrime) {
        maybePrime -= 1
    }

    print(maybePrime)
    return maybePrime
}

isPrime(maybePrime: 10)
nextPrime(currentNumber: 20)
previousPrime(currentNumber: 25)
