//
//  PartyRockModel.swift
//  PartyRock
//
//  Created by Kalyan Dechiraju on 27/03/17.
//  Copyright © 2017 Codelight Studios. All rights reserved.
//

import Foundation

class PartyRockModel {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videURL
        _videoTitle = videoTitle
    }
}
