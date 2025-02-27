//Copyright (c) 2018 pikachu987 <pikachu77769@gmail.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.

import UIKit

extension UIView {
    func leadingConstraint(_ item: UIView, attribute: NSLayoutConstraint.Attribute, relation: NSLayoutConstraint.Relation = .equal, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(
            item: item,
            attribute: attribute,
            relatedBy: relation,
            toItem: self,
            attribute: .leading,
            multiplier: 1,
            constant: -constant
        )
    }
    
    func trailingConstraint(_ item: UIView, relation: NSLayoutConstraint.Relation = .greaterThanOrEqual, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(
            item: item,
            attribute: .trailing,
            relatedBy: relation,
            toItem: self,
            attribute: .trailing,
            multiplier: 1,
            constant: constant
        )
    }
    
    func topConstraint(_ item: UIView, attribute: NSLayoutConstraint.Attribute, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(
            item: item,
            attribute: attribute,
            relatedBy: .equal,
            toItem: self,
            attribute: .top,
            multiplier: 1,
            constant: -constant
        )
    }
    
    func bottomConstraint(_ item: UIView, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(
            item: item,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: self,
            attribute: .bottom,
            multiplier: 1,
            constant: constant
        )
    }
}

extension NSLayoutConstraint {
    func priority(_ value: CGFloat) -> NSLayoutConstraint {
        self.priority = UILayoutPriority(Float(value))
        return self
    }
}
