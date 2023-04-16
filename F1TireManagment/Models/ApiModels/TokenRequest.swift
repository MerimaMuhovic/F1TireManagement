//
//  TokenRequest.swift
//  F1TireManagment
//
//  Created by Merima Muhovic on 14. 4. 2023..
//

import Foundation

struct TokenRequest: Encodable {
    let refreshToken: String
    let clientId: String
    let clientSecret: String
    let grantType: GrantType

    enum GrantType: String, Encodable {
        case refreshToken = "refresh_token"
    }

    private enum CodingKeys: String, CodingKey {
        case refreshToken = "refresh_token"
        case clientId = "client_id"
        case clientSecret = "client_secret"
        case grantType = "grant_type"
    }
}
