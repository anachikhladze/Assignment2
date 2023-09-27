import UIKit

func firstProblem() {
    print("--------------- First Problem ---------------")
    
    //შექმენით ორი Int ტიპის ცვლადი, მიანიჭეთ მათ მნიშვნელობა და დაბეჭდეთ მათი ჯამი.
    
    let firstNum = 177
    let secondNum = 29
    
    let sum = firstNum + secondNum
    print("\(firstNum) + \(secondNum) = \(sum)")
}

func secondProblem() {
    print() // Just for extra line
    print("--------------- Second Problem ---------------")
    
    /*
     შექმენით Int ტიპის ცვლადი, მიანიჭეთ მას მნიშვნელობა, და შეამოწმეთ არის თუ არა ეს რიცხვი
     10-ზე მეტი და 20-ზე ნაკლები ან ტოლი, 20-ზე მეტი და 50-ზე ნაკლები ან ტოლი, 50-ზე მეტი და
     100-ზე ნაკლები ან ტოლი, 100-ზე მეტი და შედეგი დაბეჭდეთ.
     */
    
    let number = 7
    
    switch number {
    case 10...20:
        print("Number \(number) is within the range 10...20")
    case 21...50:
        print("Number \(number) is within the range 21...50")
    case 51...100:
        print("Number \(number) is within the range 51...100")
    case 100...Int.max:
        print("Number \(number) is greater than 100")
    default:
        print("Error! Number \(number) is out of range")
    }
}

func thirdProblem() {
    print()
    print("--------------- Third Problem ---------------")
    
    /*
     for-in ციკლის გამოყენებით, დაბეჭდეთ რიცხვები 1-იდან 20-ამდე. რიცხვები ეწეროს ერთ ხაზზე, გამოყოფილი იყოს სფეისებით. შედეგი: 1 2 3 4...
     */
    
    var str = ""
    for number in 1..<20 {
        str += " \(number)"
    }
    print(str)
}

func fourthProblem() {
    print()
    print("--------------- Fourth Problem ---------------")
    
    // while ციკლის გამოყენებით, 1-იდან 100-ამდე დაბეჭდეთ ყველა კენტი რიცხვის ჯამი.
    
    var res = 0
    var num = 1
    
    while num < 100 {
        if num % 2 != 0 {
            res += num
        }
        num += 1
    }
    print("The sum of odd numbers from 1 to 100 is \(res)")
}

func fifthProblem() {
    print()
    print("--------------- Fifth Problem ---------------")
    
    /*
     შექმენით String ტიპის ცვლადი, და ციკლის გამოყენებით დაარევერსეთ ეს ცვლადი, მაგ: თუ გვაქვს TBC Academy უნდა მივიღოთ ymedacA CBT.
     */
    
    let str = "TBC Academy"
    let arr = Array(str)
    var result = ""
    
    for i in (0..<str.count).reversed() {
        result.append(arr[i])
    }
    print("\(str) reversed is \(result)")
}

func sixthProblem() {
    print()
    print("--------------- Sixth Problem ---------------")
    
    // დაბეჭდეთ ყველა ორნიშნა რიცხვი რომელიც ერთნაირი ციფრებით არის შედგენილი.
    
    for num in 10...99 {
        let tensDigit = num / 10
        let onesDigit = num % 10
        
        if tensDigit == onesDigit {
            print("\(num) ", terminator: "")
        }
    }
}

func seventhProblem() {
    print("\n")
    print("--------------- Seventh Problem ---------------")
    
    // გაქვს 9 ნიშნა რიცხვი და დაბეჭდე შებრუნებული რიცხვი.
    
    let num = 123456789
    let numToString = String(num)
    let array = Array(numToString)
    
    var res = ""
    
    for i in (0..<array.count).reversed() {
        res.append(String(array[i]))
    }
    print(res)
}

func eighthProblem() {
    print()
    print("--------------- Eighth Problem ---------------")
    
    /*
     შექმენით bool-ეან ცვლადი, მაგალითად: isNumberFound და while loop-ის გამოყენებით იპოვეთ პირველი რიცხვი რომელიც იყოფა 5-ზეც და 9-ზეც ერთდროულად. 1-იდან დაიწყეთ ათვლა.
     */
    
    var isNumberFound = false
    var number = 1
    
    while number >= 1 {
        if number % 5 == 0 && number % 9 == 0 {
            isNumberFound = true
            break
        }
        number += 1
    }
    
    if isNumberFound {
        print("Number is found and it's \(number)")
    }
}

func ninthProblem() {
    print()
    print("--------------- Ninth Problem ---------------")
    
    /*
     შექმენი String ცვლადი მაგალითად month, რომელსაც მიანიჭებ თვის მნიშვნელობას, მაგალითად: "march" და switch statement-ის გამოყენებით დაბეჭდეთ წელიწადის რა დროა.
     */
    
    let month = "September"
    
    switch month {
    case "January":
        print("It's January")
    case "February":
        print("It's February")
    case "March":
        print("It's March")
    case "April":
        print("It's April")
    case "May":
        print("It's May")
    case "June":
        print("It's June")
    case "July":
        print("It's July")
    case "August":
        print("It's August")
    case "September":
        print("It's September")
    case "October":
        print("It's October")
    case "November":
        print("It's November")
    case "December":
        print("It's December")
    default:
        print("Error!")
    }
}

func tenthProblem() {
    
    /*
     while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."
     */
    
    var color = 1
    
    while color <= 3 {
        switch color {
        case 1:
            print("🔴")
            sleep(2)
        case 2:
            print("🌕")
            sleep(1)
        case 3:
            print("🟢")
            sleep(2)
        default:
            print("Error")
        }
        color += 1
    }
    tenthProblem()
}

firstProblem()
secondProblem()
thirdProblem()
fourthProblem()
fifthProblem()
sixthProblem()
seventhProblem()
eighthProblem()
ninthProblem()
tenthProblem()
