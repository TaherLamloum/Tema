//
//  APIService.swift
//  Tema
//
//  Created by taher elnehr on 28/09/2024.
//

import Foundation
import Alamofire

func getData<T: Decodable>(url: String, type: T.Type, completion: @escaping (Result<T, Error>) -> Void){
    
    AF.request(url).responseDecodable(of: type) { response in
        switch response.result {
        case.success(let value):
            print(value)
            completion(.success(value))
        case.failure(let error):
            print(error)
            completion(.failure(error))
        }
    }
}
