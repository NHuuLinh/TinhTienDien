//
//  main.swift
//  buoi 3
//
//  Created by LinhMAC on 04/07/2023.
//

import Foundation

// viet ham tinh tong 2 so a,b
//func tinhTong (a : Int, b : Int) -> Int {
//return a + b
//}
//func tinhHieu (a : Int, b : Int) -> Int {
//    return a - b
//}
//tinhTong(a: 2, b: 3)
//print(tinhTong)
////
//func getMinMax(arrs: [Int]) -> (min: Int, max: Int) {
//    // Nếu mảng không có phần tử thì trả về (0, 0)
//    if arrs.count == 0 {
//        return (0, 0)
//    }
//    var min = arrs[0]
//    var max = arrs[0]
//    for a in arrs {
//        if min > a {
//min = a }
//if max < a {
//max = a }
//}
//    return (min, max)
//}
//let m = getMinMax(arrs: [1,3,2,4,0])
//print(m.0, m.1)
//// dem so nguyen to trong doan a,b
//func kiemTraSoNguyenTo(x: Int) -> Bool {
//    if x <= 1 {
//        return false
//    }
//
//    if x == 2 || x == 3 {
//        return true
//    }
//    for i in 2...x/2 {
//        if x % i == 0 {
//            return false
//        }
//    }
//    return true
//}
//func demSoNguyenTo(from a : Int, to b : Int) {
//    if a > b {
//        return
//    }
//    var count : Int = 0
//    for i in a...b {
//        if kiemTraSoNguyenTo(x: i) {
//            count += 1
//        }
//    }
//    //return count
//}
//// cho mot nam bat ki in ra so ngay cua 12 thang trong nam do
//func kiemTraNamNhuan(year : Int) -> Bool{
//    print("Nhập năm bạn muốn kiểm tra: ", terminator: "")
//    let year = Int(readLine()!)!
//
//    if year <= 0 {
//        return false
//    }
//
//    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
//        return true
//    }
//    return true
//}
//func soNgayTrongNam(Month : Int) {
//    print ("cac thang 1, 3, 5, 7, 8, 10, 12 co 31 ngay")
//    print ("cac thang 2, 4, 6, 9, 11 co 30 ngay")
//    if kiemTraNamNhuan(year: Month) {
//        print("thang 2 co 29 ngay")
//    } else {
//        print("thang 2 co 28 ngay ")
//    }
//}
//var name : String?
//var age : Int!
//print(name)
//print(age)
//name = "Linh"
//print(name)
//if let newName = name {
//    print("New name \(newName)")
//} else {
//    print("name bi nil")
//}
//func viDuGuardLet() {
//    guard let newName = name else {
//        print(" bi nill")
//        return
//    }
//    print("Nam trong ham bi la \(newName)")
//
//}
//viDuGuardLet()
//age1 = 20
//print(age!)
//var numberStr = "muoi"
//let x = Int(numberStr) ?? 0
//print(x)
//let bumber = Int(readLine() ?? "") ?? 0
////Cho một biến str kiểu String?, viết một đoạn code kiểm tra xem giá trị của str có phải là nil hay không, nếu không thì in giá trị của str
//// Viết một hàm kiểm tra một biến name kiểu String?, viết một đoạn code kiểm tra xem giá trị của name có phải là nil hay không. Nếu không phải, in ra giá trị của name. Nếu là nil, gán giá trị “Unknown” cho biến name.
//var str1: String?
//str1 = "qwo"
//
//if let strValue = str1 {
//    print("Giá trị của str là \(strValue)")
//} else {
//    print("Giá trị của str là nil")
//}

// Viết một hàm, trong hàm cho một biến age kiểu Int? và một biến defaultAge kiểu Int, viết một đoạn code sử dụng toán tử nil coalescing để trả về giá trị của age, nếu age là nil thì trả về giá trị của defaultAge.
func bai2() {
    var age4 : Int? = 15
    let defaultAge : Int = 10
    print("age : \(age4 ?? defaultAge)")
}
bai2()
//Viết một hàm có tham số là  kiểu [Int]?, viết code kiểm tra xem array truyền vào hàm có phải là nil hay không. Nếu không phải nil, in ra số phần tử của mảng. Nếu là nil, in ra mảng không tồn tại.
func bai3(optionalArray : [Int]?) {
    guard let newArray = optionalArray else {
        print("Mang khong ton tai")
        return
    }
    print(newArray.count)
}
bai3(optionalArray: [1,3,9,5,4])
