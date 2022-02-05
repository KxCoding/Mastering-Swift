//
//  Mastering Swift
//  Copyright (c) KxCoding <help@kxcoding.com>
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

import UIKit

struct ImageDownloader {
    static let shared = ImageDownloader()
    private init() {}
    
    func download(url: String) -> UIImage? {
        for _ in 0 ... Int.random(in: 5 ... 10) {
            print("Downloading... \(url)")
            Thread.sleep(forTimeInterval: Double.random(in: 0.5 ... 1.0))
        }
        
        return UIImage.from(url: url)
    }
    
    func download(url: String, completion: @escaping (UIImage?, Error?) -> Void) {
        let rnd = Int.random(in: 5 ... 10)
        DispatchQueue.global().async {
            for _ in 0 ... rnd - 1 {
                print("Downloading... \(url)")
                Thread.sleep(forTimeInterval: Double.random(in: 0.5 ... 1.0))
            }
            
            DispatchQueue.main.async {
                let image = UIImage.from(url: url)
                completion(image, nil)
            }
        }
    }
    
    func downloadAsync(url: String) async throws -> UIImage? {
        return try await withCheckedThrowingContinuation { continuation in
            Task {
                let rnd = Int.random(in: 5 ... 10)
                
                for _ in 0 ..< rnd {
                    print("Downloading... \(url)")
                    try await Task.sleep(nanoseconds: UInt64(Double.random(in: 0.5 ... 1.0) * 1_000_000_000))
                }

                let image = UIImage.from(url: url)
                continuation.resume(returning: image)
            }
        }
    }
}
