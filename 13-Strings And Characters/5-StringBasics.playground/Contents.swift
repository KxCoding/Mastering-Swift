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
 # String Basics
 */
let str = "Swift"

let firstIdx = str.startIndex
print(str[firstIdx])

let lastCharIdx = str.index(before: str.endIndex)
print(str[lastCharIdx])




let b = String(12)
let c = String(12.34)
let d = String(str)

let hex = String(123, radix: 16)

let repeatStr = String(repeating: "as1", count: 3)
repeatStr

let unicode = "\u{1f44f}"


str.isEmpty

"apple" < "Apple"


"a" < "A"
"a" < "b"

str.lowercased()
str.uppercased()

str.capitalized

str

for char in "Hello" {
    print(char)
}

let num = "12123123"
num.randomElement()

num.shuffled()






