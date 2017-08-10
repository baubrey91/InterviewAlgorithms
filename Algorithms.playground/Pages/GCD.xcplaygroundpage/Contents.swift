
import Foundation

func GCD(x: Int, y: Int) -> Int {
    if y == 0  {
        return x
    } else {
        return GCD(x: (y % x), y: x)
    }
}

GCD(x: 3, y: 9)
