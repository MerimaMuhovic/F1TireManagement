//
//  AccessToken.swift
//  F1TireManagment
//
//  Created by Merima Muhovic on 14. 4. 2023..
//

import Foundation

struct AccessToken: Codable {
    let accessToken: String?
    let refreshToken: String?
    let tokenType: String?
    let expiresIn: Int?
    let createdAt: Int?
    let userId: Int?
    let error: String?
    let errorDescription: String?
}
