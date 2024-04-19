import Cocoa

/*
 1 написать алгоритм наимменьшего общего кратного
 */

func lcm2_(a : Int, b : Int, c : Int = 0) -> Int {
    if b % a == 0 {
        return b
    } else {
        return lcm2_(a: a, b: b + c, c: c)
    }
}
func lcm2(a : Int, b : Int) -> Int {
    var newA = a
    var newB = b
    if newA == 0 || newB == 0 { return 0 }
    if newA < 0 { newA = -newA }
    if newB < 0 { newB = -newB }
    return lcm2_(a: min(newA, newB), b: max(newA, newB), c: max(newA, newB))
}
//lcm2(a: 12, b: 256)
//lcm2(a: 7, b: 2)
//lcm2(a: -50, b: 5)
//lcm2(a: 0, b: 5)

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

func pow2_( _ a : Decimal, _ b : Int) -> Decimal {
    if b != 0 {
        return a * pow2_(a, b - 1)
    } else {
        return 1
    }
}

func pow2( _ a : Decimal, _ b : Int) -> Decimal {
    if b == 0 { return 1 }
    if b == 1 { return a }
    if b < 0 {
        return 1 / pow2_(a, -b)
    } else {
        return pow2_(a, b)
    }
}


pow2(2, -2)
pow2(2, 2)
pow2(2, 1)
pow2(2, 0)
pow2(0, 1)
pow2(-2, 2)




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


func pow3( _ a : Decimal, _ b : Int) -> Decimal {
    if b == 0 {return 1}
    
    
    if b % 2 == 1 {
        return a * pow3(a,b - 1)
    } else {
        return  pow3(a * a,b >> 1)
    }
}
pow3(2, 5)


/*
 4 тест люка лемера резеля - получить простые числа
 */




