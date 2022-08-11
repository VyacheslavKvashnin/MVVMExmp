//
//  MainViewModel.swift
//  MVVMExmp
//
//  Created by Вячеслав Квашнин on 08.08.2022.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData) -> Void)? { get set }
    func startFetch()
}


final class MainViewModel: MainViewModelProtocol {
    
    public var updateViewData: ((ViewData) -> Void)?
    
    init() {
        updateViewData?(.initial)
    }
    
    func startFetch() {
        updateViewData?(.loading(ViewData.Data(icon: nil,
                                              title: nil,
                                              description: nil,
                                              numberPhone: nil)))
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.updateViewData?(.success(ViewData.Data(icon: "success",
                                                  title: "Success",
                                                  description: "Good",
                                                  numberPhone: nil)))
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 6) { [weak self] in
            self?.updateViewData?(.failure(ViewData.Data(icon: "success",
                                                  title: "Error",
                                                  description: "Not User",
                                                  numberPhone: nil)))
        }
    }
}
