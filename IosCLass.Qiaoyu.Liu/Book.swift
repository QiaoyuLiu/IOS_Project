//
//  Book.swift
//  IosCLass.Qiaoyu.Liu
//
//  Created by epita on 17/05/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import Foundation
class Book{
    var Title: String?
    var Year: String?
    var Author: String?
    var Detail: String?
    var BookImage: String?
    init(Title: String, Year:String, Author: String, Detail: String , BookImage: String){
        self.Author = Author
        self.Title = Title
        self.Year = Year
        self.Detail = Detail
        self.BookImage = BookImage
    }
}
