//
//  main.swift
//  bai Tap ve nha 3
//
//  Created by LinhMAC on 04/07/2023.
//

import Foundation
// Tính tổng các chữ số trong 1 số
func tinhTong() {
    print("Nhập một số nguyên dương:")
    if let input = readLine(), let n = Int(input) {
        if n < 0 {
            print("Không nhập giá trị âm")
            return
        }
        var sum = 0
        var num = n
        while num > 0 {
            sum += num % 10
            num /= 10
        }
        print("Tổng các chữ số trong số \(n) là \(sum)")
    } else {
        print("Hãy nhập số")
    }
}
tinhTong()
//// Giai phuong trinh bac 2
func giaiPhuongTrinh() {
    print("Nhập giá trị a:")
    let a = Double(readLine() ?? "0") ?? 0
    print("Nhập giá trị b:")
    let b = Double(readLine() ?? "0") ?? 0
    print("Nhập giá trị c:")
    let c = Double(readLine() ?? "0") ?? 0

    if a == 0 {
        print("Đây không phải là phương trình bậc hai")
        return
    }

    let delta = b * b - 4 * a * c

    if delta < 0 {
        print("Phương trình vô nghiệm")
    } else if delta == 0 {
        let x = -b / (2 * a)
        print("Phương trình có nghiệm kép x = \(x)")
    } else {
        let x1 = (-b + sqrt(delta)) / (2 * a)
        let x2 = (-b - sqrt(delta)) / (2 * a)
        print("Phương trình có hai nghiệm phân biệt x1 = \(x1) và x2 = \(x2)")
    }
}
giaiPhuongTrinh()
// tinh cuoc taxi
func tinhTienCuocTaxi(hangXe: String, loaiXe: String, soKm: Double) -> Double {
    var tienCuoc: Double = 0
    switch hangXe {
        // đặt giá tri case là tiếng việt không dấu
    case "Mai Linh":
        switch loaiXe {
        case "xe 4 cho nho":
            if soKm < 0 {
                print("Nhập số km lớn hơn 0")
            } else if soKm >= 0 && soKm <= 1.28 {
                tienCuoc = 20000
            } else if soKm > 1.28 && soKm < 31 {
                tienCuoc = soKm * 14500
            } else {
                tienCuoc = soKm * 12000
            }
        case "xe 4 cho lon":
            if soKm < 0 {
                print("Nhập số km lớn hơn 0")
            } else if soKm >= 0 && soKm < 31 {
                tienCuoc = soKm * 16000
            } else {
                tienCuoc = soKm * 12700
            }
        case "xe 7 cho":
            if soKm < 0 {
                print("Nhập số km lớn hơn 0")
            } else if soKm >= 0 && soKm < 31 {
                tienCuoc = soKm * 17000
            } else {
                tienCuoc = soKm * 14300
            }
        default:
            print("Loại xe không hợp lệ")
        }
    case "Vinassun":
        switch loaiXe {
        case "xe 4 cho":
            if soKm < 0 {
                print("Nhập số km lớn hơn 0")
            } else if soKm >= 0 && soKm <= 0.5 {
                tienCuoc = 11000
            } else if soKm > 0.5 && soKm < 31 {
                tienCuoc = soKm * 17600
            } else {
                tienCuoc = soKm * 14500
            }
        case "xe 7 cho":
            if soKm < 0 {
                print("Nhập số km lớn hơn 0")
            } else if soKm >= 0 && soKm <= 0.5 {
                tienCuoc = 12000
            } else if soKm > 0.5 && soKm < 31 {
                tienCuoc = soKm * 19600
            } else {
                tienCuoc = soKm * 17100
            }
        default:
            print("Loại xe không hợp lệ")
        }
    case "Vinataxi" :
        switch loaiXe {
        case "xe 4 cho":
            if soKm < 0 {
                print("Nhập số km lớn hơn 0")
            } else if soKm >= 0 && soKm <= 0.5 {
                tienCuoc = 11000
            } else if soKm > 0.5 && soKm < 31 {
                tienCuoc = soKm * 17100
            } else {
                tienCuoc = soKm * 13600
            }
        case "xe 7 cho":
            if soKm < 0 {
                print("Nhập số km lớn hơn 0")
            } else if soKm >= 0 && soKm <= 0.5 {
                tienCuoc = 12000
            } else if soKm > 0.5 && soKm < 31 {
                tienCuoc = soKm * 19100
            } else {
                tienCuoc = soKm * 15100
            }
        default:
            print("Loại xe không hợp lệ")
        }
        case "Group" :
            switch loaiXe {
            case "xe Vios":
                if soKm < 0 {
                    print("Nhập số km lớn hơn 0")
                } else if soKm >= 0 && soKm <= 0.9 {
                    tienCuoc = 20000
                } else if soKm > 0.5 && soKm < 26 {
                    tienCuoc = soKm * 17600
                } else {
                    tienCuoc = soKm * 14400
                }
            case "xe Innova":
                if soKm < 0 {
                    print("Nhập số km lớn hơn 0")
                } else if soKm >= 0 && soKm < 26 {
                    tienCuoc = 19600
                } else {
                    tienCuoc = soKm * 16200
                }
            case "xe Eco":
                if soKm < 0 {
                    print("Nhập số km lớn hơn 0")
                } else if soKm >= 0 && soKm <= 1.5 {
                    tienCuoc = 20000
                } else if soKm > 0.5 && soKm < 26 {
                    tienCuoc = soKm * 14300
                } else {
                    tienCuoc = soKm * 12300
                }
            default:
        print("Loại xe không hợp lệ")
    }
            case "G7" :
                switch loaiXe {
                case "4 cho nho":
                    if soKm < 0 {
                        print("Nhập số km lớn hơn 0")
                    } else if soKm >= 0 && soKm <= 1.379 {
                        tienCuoc = 20000
                    } else {
                        tienCuoc = soKm * 12000
                    }
                case "4 cho lon":
                    if soKm < 0 {
                        print("Nhập số km lớn hơn 0")
                    } else if soKm >= 0 && soKm <= 1.25 {
                        tienCuoc = 20000
                    } else {
                        tienCuoc = soKm * 13000
                    }
                case "xe 7 cho":
                    if soKm < 0 {
                        print("Nhập số km lớn hơn 0")
                    } else if soKm >= 0 && soKm <= 1.143 {
                        tienCuoc = 20000
                    } else {
                        tienCuoc = soKm * 14500
                    }
            default:
        print("Loại xe không hợp lệ")
    }
            case "Sao Mai" :
        switch loaiXe {
        case "xe 4 cho nho":
            if soKm < 0 {
                print("Nhập số km lớn hơn 0")
            } else if soKm >= 0 && soKm <= 1.5 {
                tienCuoc = 20000
            } else if soKm > 1.5 && soKm < 21 {
                tienCuoc = 13500
            } else {
                tienCuoc = soKm * 11500
            }
        case "xe 4 cho lon":
            if soKm < 0 {
                print("Nhập số km lớn hơn 0")
            } else if soKm >= 0 && soKm <= 1.4 {
                tienCuoc = 20000
            } else if soKm > 1.4 && soKm < 21 {
                tienCuoc = 14500
            } else {
                tienCuoc = soKm * 12500
            }
        default:
            print("Loại xe không hợp lệ")
}
    case "GSM" :
        switch loaiXe {
        case "xe 4 cho":
            if soKm < 0 {
                print("Nhập số km lớn hơn 0")
            } else if soKm >= 0 && soKm <= 1 {
                tienCuoc = 20000
            } else if soKm > 1 && soKm < 26 {
                tienCuoc = soKm * 15500
            }else {
                tienCuoc = soKm * 12500
            }
        default:
            print("Loại xe không hợp lệ")
        }
    default:
        print("Hãng xe không hợp lệ")
    }
    return tienCuoc
}

print("Nhập hãng xe:")
let hangXe = readLine() ?? ""
print("Nhập loại xe:")
let loaiXe = readLine() ?? ""
print("Nhập số km:")
let soKmString = readLine() ?? ""
let soKm = Double(soKmString) ?? 0
let tienCuoc = tinhTienCuocTaxi(hangXe: hangXe, loaiXe: loaiXe, soKm: soKm)
print("Tiền cước: \(tienCuoc) Vnđ")
