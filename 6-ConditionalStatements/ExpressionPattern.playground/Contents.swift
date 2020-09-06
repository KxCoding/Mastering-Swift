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
import UIKit

/*:
 # Expression Pattern
 */
let a = 1
switch a {
case 0...10:
    print("0 ~ 10")
default:
    break
}


// 이항 연산자

struct Size {
    var width = 0.0
    var height = 0.0
    
    // case 뒤에오는 자료형, 두번째 자료형은 value expression의 자료형
    static func ~=(left: Range<Int>, right: Size) -> Bool {
        return left.contains(Int(right.width))
    }
}

let s = Size(width: 10, height: 20)

switch s {
case 1..<9:
    print("1 ~ 9")
default:
    break
}

struct Size2 {
    var width = 0.0
    var height = 0.0
    
    static func ~=(left: Range<Int>, right: Size2) -> Bool {
        return left.contains(Int(right.width))
    }
}

let s2 = Size2(width: 55, height: 22)
switch s2 {
case 1..<10:
    print("")
default:
    print("")
}


