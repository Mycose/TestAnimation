//
//  ShrinkableTableViewHeaderView.swift
//  testQonto
//
//  Created by Clément Morissard on 13/04/17.
//  Copyright © 2017 Clément Morissard. All rights reserved.
//

import UIKit

class ShrinkableTableViewHeaderView: UIView {
    let companyLabelFontSizeStart: CGFloat = 14.0
    let companyLabelFontSizeMin: CGFloat = 12.0
    
    let companyLabelTopConstraintStart: CGFloat = 48.0
    let companyLabelTopConstraintMin: CGFloat = 0.0

    @IBOutlet var companyLabelTopConstraint: NSLayoutConstraint!
    @IBOutlet var companyLabel: UILabel!

    let priceLabelFontSizeStart: CGFloat = 26.0
    let priceLabelFontSizeMin: CGFloat = 16.0

    let priceLabelTopConstraintStart: CGFloat = 6.0
    let priceLabelTopConstraintMin: CGFloat = 4.0

    @IBOutlet var priceLabelTopConstraint: NSLayoutConstraint!
    @IBOutlet var priceLabel: UILabel!

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    func setShrinkFactor(shrinkFactor: CGFloat) {
        let companyLabelTopConstraintDiff = companyLabelTopConstraintStart - companyLabelTopConstraintMin
        let companyLabelTopConstraintModifier = companyLabelTopConstraintDiff * shrinkFactor
        let companyLabelNewTopConstraint = companyLabelTopConstraintStart - companyLabelTopConstraintModifier
        companyLabelTopConstraint.constant = companyLabelNewTopConstraint

        let companyLabelFontSizeDiff = companyLabelFontSizeStart - companyLabelFontSizeMin
        let companyLabelFontSizeModifier = companyLabelFontSizeDiff * shrinkFactor
        let companyLabelFontSizeNewValue = companyLabelFontSizeStart - companyLabelFontSizeModifier
        companyLabel.font = companyLabel.font.withSize(companyLabelFontSizeNewValue)

        let priceLabelTopConstraintDiff = priceLabelTopConstraintStart - priceLabelTopConstraintMin
        let priceLabelTopConstraintModifier = priceLabelTopConstraintDiff * shrinkFactor
        let priceLabelNewTopConstraint = priceLabelTopConstraintStart - priceLabelTopConstraintModifier
        priceLabelTopConstraint.constant = priceLabelNewTopConstraint

        let priceLabelFontSizeDiff = priceLabelFontSizeStart - priceLabelFontSizeMin
        let priceLabelFontSizeModifier = priceLabelFontSizeDiff * shrinkFactor
        let priceLabelFontSizeNewValue = priceLabelFontSizeStart - priceLabelFontSizeModifier
        priceLabel.font = priceLabel.font.withSize(priceLabelFontSizeNewValue)

        //companyLabel.transform = CGAffineTransform(scaleX: 1.0 - shrinkFactor, y: 1.0 - shrinkFactor)
    }

}
