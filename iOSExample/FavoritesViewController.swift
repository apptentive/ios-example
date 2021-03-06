//
//  FavoritesViewController.swift
//  ApptentiveExample
//
//  Created by Frank Schmitt on 8/6/15.
//  Copyright (c) 2015 Apptentive, Inc. All rights reserved.
//

import UIKit

class FavoritesViewController: PicturesViewController {
	override func viewDidLoad() {
		super.viewDidLoad()

		minimumWidth = 120
	}
	
	override func configure() {
		self.source = manager.favoriteDataSource
	}

	@IBAction override func toggleLike(_ sender: UIButton) {
		if let cell = sender.superview?.superview as? UICollectionViewCell {
			if let indexPath = self.collectionView?.indexPath(for: cell) {
				// Will always mean "unlike" in favorites-only view
				sender.isSelected = false

				self.source?.setLiked((indexPath as NSIndexPath).item, liked: false)
			}
		}
	}
}
