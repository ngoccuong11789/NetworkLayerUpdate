//
//  EmployeesAPI.swift
//  NetworkLayer
//
//  Created by Nguyen Ngoc Cuong on 06/06/2022.
//  Copyright © 2022 Ahmed Masoud. All rights reserved.
//

import Foundation
protocol EmployeesAPIProtocol {
    //func getEmployees(completion: @escaping (Result<BaseResponse<[Data]>?, NSError>) -> Void)
    func getEmployees(completion: @escaping (Result<EmployeeModel?, NSError>) -> Void)
}


class EmployeesAPI: BaseAPI<UsersNetworking>, EmployeesAPIProtocol {
    
    //MARK:- Requests
    
//    func getEmployees(completion: @escaping (Result<BaseResponse<[Data]>?, NSError>) -> Void) {
//        self.fetchData(target: .getUsers, responseClass: BaseResponse<[Data]>.self) { (result) in
//            completion(result)
//        }
//    }
    
    func getEmployees(completion: @escaping (Result<EmployeeModel?, NSError>) -> Void) {
        self.fetchData(target: .getUsers, responseClass: EmployeeModel.self) { (result) in
            completion(result)
        }
    }
    
}
