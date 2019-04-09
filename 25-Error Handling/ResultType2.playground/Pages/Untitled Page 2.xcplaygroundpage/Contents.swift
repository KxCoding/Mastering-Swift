//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//: [Previous](@previous)

import Foundation

/*:
 # Result Type in Async Code
 */

guard let url = URL(string: "http://kxcoding-study.azurewebsites.net/api/books") else {
   fatalError("invalid url")
}

struct BookListData: Codable {
   let code: Int
   let totalCount: Int
   let list: [Book]
}

struct Book: Codable {
   let title: String
}

enum ApiError: Error {
   case general
   case invalidFormat
}

typealias CompletionHandler = (BookListData?, Error?) -> ()

func parseBookList(completion: @escaping CompletionHandler) {
   let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if let error = error {
         completion(nil, error)
         return
      }

      guard let data = data else {
         completion(nil, nil)
         return
      }

      do {
         let list = try JSONDecoder().decode(BookListData.self, from: data)
         completion(list, nil)
      } catch {
         completion(nil, error)
      }
   }
   task.resume()
}









//: [Next](@next)
