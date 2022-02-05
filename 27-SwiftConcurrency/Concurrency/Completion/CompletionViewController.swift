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

class CompletionViewController: UIViewController {

    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    @IBAction func download(_ sender: Any) {
        loader.startAnimating()
        
        ImageDownloader.shared.download(url: URL.sampleUrl1) { image, error in
            if let error = error {
                print(error)
            }
            
            guard let image = image else {
                return
            }
            
            self.imageView1.image = image
        }
        
        ImageDownloader.shared.download(url: URL.sampleUrl2) { image, error in
            if let error = error {
                print(error)
            }
            
            guard let image = image else {
                return
            }
            
            self.imageView2.image = image
        }
        
        ImageDownloader.shared.download(url: URL.sampleUrl3) { image, error in
            if let error = error {
                print(error)
            }
            
            guard let image = image else {
                return
            }
            
            self.imageView3.image = image
        }
                
        self.loader.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}
