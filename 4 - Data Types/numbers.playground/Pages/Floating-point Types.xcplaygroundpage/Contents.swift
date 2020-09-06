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

//: [Previous](@previous)
/*:
 # Floating-point Types
 
 ![FloatingPoint](floating-point-types.png)
 */
// Float 4바이트, Double 8바이트
// 4바이트인데도 Int(8바이트)보다 더 큰 범위를 포함할 수 있다.
// 하지만 메모리의 크기에 따라 정확성이 달라진다.
// 최대 6자리까지만 정확성을 보장한다.
// Double은 최대 15자리까지 보장.

// 3.141592653589793238462643383279502884197169
let pi: Float = 3.141592653589793238462643383279502884197169
pi // 3.141593

let piDouble: Double = 3.141592653589793238462643383279502884197169
piDouble // 3.141592653589793

