//
//  TVmazeAPIProvider.swift
//  Halo
//
//  Created by Levy Cristian on 02/10/21.
//

import Foundation

/// A provider that contains each Endpoint available at TVmaze API and its specific definitions
enum TVmazeAPIProvider {
    /// Gets shows by a page
    /// - Parameters:
    ///   - page: The current api page
    case shows(Int)
    /// Search shows by a query
    /// - Parameters:
    ///   - query: The query to be peformed
    case search(String)
    /// Gets show episodes by a id
    /// - Parameters:
    ///   - showId: The query to be peformed
    case episodes(Int)
}

extension TVmazeAPIProvider: Endpoint {
    var base: String {
        "https://api.tvmaze.com"
    }

    var path: String {
        switch self {
        case .shows:
            return "/shows"
        case .search:
            return "/search/shows"
        case .episodes(let id):
            return "/shows/\(id)/episodes"
        }
    }

    var headers: [String: String]? {
        return [:]
    }

    var params: [String: Any]? {
        switch self {
        case .shows(let page):
            return ["page": page]
        case .search(let query):
            return ["q": query]
        default:
            return [:]
        }
    }

    var parameterEncoding: ParameterEnconding {
        switch self {
        case .shows, .search, .episodes:
            return .defaultEncoding
        }
    }

    var method: HTTPMethod {
        switch self {
        case .shows, .search, .episodes:
            return .get
        }
    }
}
