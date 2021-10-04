//
//  ShowsRemoteDataSourceProtocol.swift
//  Halo
//
//  Created by Levy Cristian on 04/10/21.
//

import Foundation

protocol ShowsRemoteDataSourceProtocol {

    func getshows(at page: Int, completion: @escaping ((Result<[Show], APIError>) -> Void))
    func downloadImage(from url: String, completion: @escaping ((Result<Data, APIError>) -> Void))

}
