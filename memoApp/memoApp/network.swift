//
//  network.swift
//  memoApp
//
//  Created by νμλΉ on 2021/11/28.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()
    
  private(set) lazy var apollo = ApolloClient(url: URL(string: "http://localhost:8080/v1/graphql")!)
}
