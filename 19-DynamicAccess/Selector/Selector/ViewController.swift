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

class ViewController: UIViewController {
   
   @IBOutlet weak var numberLabel: UILabel!
   
   func reset() {
      numberLabel.text = "0"
   }
   
   func update(_ sender: Any) {
      let rnd = Int.random(in: 1...1000)
      numberLabel.text = "\(rnd)"
   }
   
   lazy var updateBtn: UIButton = {
      let btn = UIButton(type: .system)
      btn.setTitle("Update", for: .normal)
      btn.frame = CGRect(x: 0.0, y: self.view.frame.height - 100, width: view.frame.width, height: 60.0)
      return btn
   }()
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      view.addSubview(updateBtn)
      
      
   }
}

