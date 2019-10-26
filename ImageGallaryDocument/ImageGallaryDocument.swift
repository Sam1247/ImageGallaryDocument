//
//  Document.swift
//  ImageGallaryDocument
//
//  Created by Abdalla Elsaman on 9/7/19.
//  Copyright © 2019 Dumbies. All rights reserved.
//

import UIKit

class ImageGallaryDocument: UIDocument {
    
    var imageGallary: ImageGallary?
    
    
    override func contents(forType typeName: String) throws -> Any {
        // Encode your document with an instance of NSData or NSFileWrapper
        return imageGallary?.json ?? Data()
    }
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        if let json = contents as? Data {
            imageGallary = ImageGallary(json: json)
        }
    }
}

