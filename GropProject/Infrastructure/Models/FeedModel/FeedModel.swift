//
//  FeedModel.swift
//  Gunduri Davaleba
//
//  Created by Zura Kobakhidze on 05.07.21.
//

import Foundation

struct FeedModel: Codable{
    var articles: [FeedModelDetail]?
}

struct FeedModelDetail: Codable{
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?
}
