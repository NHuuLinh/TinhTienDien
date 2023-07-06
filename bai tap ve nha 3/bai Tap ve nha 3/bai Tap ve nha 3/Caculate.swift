//
//  Caculate.swift
//  bai Tap ve nha 3
//
//  Created by LinhMAC on 06/07/2023.
//

import Foundation
func tinhTienCuocTaxi(hangXe: CarCompany, dichVu: Service, soKm: Double) {
    var giaMoCua: Double = 0
    var kmMoCua: Double = 0
    var giaKmTiepTheo: Double = 0
    var giaKmThuN: Double = 0
    var kmThuN: Double = 0
    
    switch hangXe {
    case .MAI_LINH:
        giaMoCua = 20000
        kmMoCua = 1.28
        kmThuN = 31
        switch dichVu {
        case .XE_4_NHO:
            giaKmTiepTheo = 14500
            giaKmThuN = 12000
        case .XE_4_LON:
            giaKmTiepTheo = 16000
            giaKmThuN = 12700
        case .XE_7:
            giaKmTiepTheo = 17000
            giaKmThuN = 14300
        default:
            break
        }
    case .VINA_SUN:
        kmThuN = 31
        kmMoCua = 0.5
        giaMoCua = 11000
        switch dichVu {
        case .XE_4_NHO:
            giaMoCua = 11500
            giaKmTiepTheo = 19600
            giaKmThuN = 17100
        default :
            break
        }
    case .VINA_TAXI:
        print()
    case .GROUP:
        print()
    case .G7:
        print()
    }
    
    var tienCuoc: Double = 0
    if soKm <= 0 {
        tienCuoc = 0
    } else if soKm <= kmMoCua {
        tienCuoc = giaMoCua
    } else if soKm < kmThuN {
        tienCuoc = giaMoCua + giaKmTiepTheo * (kmThuN - kmMoCua)
    } else {
        tienCuoc = giaMoCua + giaKmTiepTheo * (kmThuN - kmMoCua) + giaKmThuN * (soKm - kmThuN)
    }
    
    print("Tiền cước của chuyến xe \(hangXe.rawValue), \(dichVu.rawValue) là \(tienCuoc)")
}
