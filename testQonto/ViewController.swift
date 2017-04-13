//
//  ViewController.swift
//  testQonto
//
//  Created by Clément Morissard on 13/04/17.
//  Copyright © 2017 Clément Morissard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let headerHeightStart: CGFloat = 170.0
    let headerHeightMin: CGFloat = 44.0

    @IBOutlet var constraintheaderTableViewHeight: NSLayoutConstraint!
    @IBOutlet var headerTableView: ShrinkableTableViewHeaderView!
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UITableViewDelegate, UITableViewDatasource
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }


    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y


        var newHeight = (-offsetY) + headerHeightStart

        if newHeight < headerHeightMin {
            newHeight = headerHeightMin
        }

        constraintheaderTableViewHeight.constant = newHeight

        if offsetY > 0 {
            let factor = (headerHeightMin / newHeight)
            headerTableView.setShrinkFactor(shrinkFactor: factor)
        }
    }
}

