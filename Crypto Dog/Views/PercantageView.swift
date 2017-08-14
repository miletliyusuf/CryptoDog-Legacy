//
//  PercantageView.swift
//  Crypto Dog
//
//  Created by Yusuf Miletli on 8/14/17.
//  Copyright © 2017 Miletli. All rights reserved.
//

import Foundation
import UIKit

class PercantageView: UIView {
    
    @IBOutlet weak var contentView:UIView?
    @IBOutlet weak var labelPercantage:UILabel?
    
    public var percantage:String! {
        didSet {
            self.labelPercantage?.text = "\(self)".toPercantageShow()
        }
    }
    public var isIncreasing:Bool? {
        didSet {
            self.contentView?.backgroundColor = isIncreasing! ? UIColor.green : UIColor.red
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(frame: CGRect) { // for using CustomView in code
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) { // for using CustomView in IB
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("PercantageView", owner: self, options: nil)
        guard let content = contentView else { return }
        content.frame = self.bounds
        content.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(content)
    }
}
