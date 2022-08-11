//
//  ViewData.swift
//  MVVMExmp
//
//  Created by Вячеслав Квашнин on 08.08.2022.
//

import Foundation

enum ViewData {
    case initial
    case loading(Data)
    case success(Data)
    case failure(Data)
    
    struct Data {
        let icon: String?
        let title: String?
        let description: String?
        let numberPhone: String?
    }
}
