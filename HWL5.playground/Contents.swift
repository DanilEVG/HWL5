import Cocoa

/*
 1 написать алгоритм наимменьшего общего кратного
 */

func lcm1(a : Int, b : Int, m : Int = 0) -> Int {
    if a <= 0 || b <= 0 {
        return 0
    }
    var multiple = m + max(abs(a), abs(b))
    if multiple % a == 0 && multiple % b == 0 {
        return multiple
    } else {
        return lcm1(a: a, b: b, m: multiple)
    }
}
lcm1(a: 256, b: 12)
lcm1(a: 50, b: 5)
lcm1(a: -50, b: 5)
lcm1(a: 0, b: 5)

/*
 2 написать функцию возведения в степень  (функционально и процедурно)
 */

func pow1( _ a : Decimal, _ b : Int) -> Decimal {
    var power = b
    var negative = false
    if b < 0 {
        power = -power
        negative = true
    }
    if power == 0 {
        return 1
    }
    var result : Decimal = 1
    for _ in 1...power {
        result *= a
    }
    if negative {
        return 1 / result
    } else {
        return result
    }
    
}

pow1(2, -2)
pow1(2, 2)
pow1(2, 1)
pow1(2, 0)
pow1(0, 1)
pow1(-2, 2)

func pow2( _ a : Decimal, _ b : Int) -> Decimal {
    if b != 0 {
        return a * pow2(a, b - 1)
    } else {
        return 1
    }
}

pow2(2, 5)

/*
 3 быстрое возведение в степень (процедурно и функционально)
 */



func pow11( _ a : Int, _ b : Int ) -> Decimal {
    var result : Decimal  = 1
    var mult : Decimal  = Decimal(a)
    var power = b
    var negative = false
    if b == 0 {
        return 1
    }
    if power < 0 {
        negative = true
        power = -power
    }
    while power != 0 {
        if power % 2 == 1 {
            result *= mult
        }
        mult *= mult
        power = power / 2
    }
    if negative {
        return 1 / result
    } else {
        return result
    }
    
}
pow11(2, 2)
pow11(2, 1)
pow11(2, 0)
pow11(2, -2)

//уточнить как реализовать отрицательную степень
func pow22( _ a : Decimal, _ b : Int) -> Decimal {
    if b == 0 { return 1}
    if b == 1 {
        return a
    } else {
        return a * pow22(a, b - 1)
    }
}
pow22(2, 2)
pow22(2, 1)
pow22(2, 0)

/*
 4 тест люка лемера резеля - получить простые числа
 */

