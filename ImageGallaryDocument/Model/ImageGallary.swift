//
//  ImageGallery.swift
//  ImageGallery
//
//  Created by Abdalla Elsaman on 8/28/19.
//  Copyright © 2019 Dumbies. All rights reserved.
//

import Foundation

struct ImageGallary: Codable {
    
    var imagesData = [ImageData]()
    
    init() {}
    
    init?(json: Data) {
        if let newValue = try? JSONDecoder().decode(ImageGallary.self , from: json) {
            self = newValue
        } else {
            return nil
        }
    }
    
    var json: Data? {
        return try? JSONEncoder().encode(self)
    }
    
    private mutating func append(imageData: ImageData) {
        imagesData.append(imageData)
    }
}
