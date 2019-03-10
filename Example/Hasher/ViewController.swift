//
//  ViewController.swift
//  Hasher
//
//  Created by acct<blob>=<NULL> on 03/09/2019.
//  Copyright (c) 2019 acct<blob>=<NULL>. All rights reserved.
//

import UIKit
import Hasher

class ViewController: UIViewController {

    @IBOutlet weak var hashTypeSelector: UISegmentedControl!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    let availableHashes = ["md5", "sha1", "sha224", "sha256", "sha384", "sha512"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupSelector()
    }
    
    private func setupSelector() {
        self.hashTypeSelector.removeAllSegments()
        
        self.availableHashes.enumerated().forEach { (index, hash) in
            self.hashTypeSelector.insertSegment(withTitle: hash, at: index, animated: false)
        }
        self.hashTypeSelector.selectedSegmentIndex = 0
    }
    
    @IBAction func didChangeHashType(_ sender: Any) {
        self.updateHashValue()
    }
    
    @IBAction func didUpdateField(_ sender: Any) {
        self.updateHashValue()
    }
    
    func updateHashValue() {
        guard let hashType = HashType.hashType(from: self.hashTypeSelector.selectedSegmentIndex),
            let baseText = self.textField.text, !baseText.isEmpty else {
            self.resultLabel.text = "Type something."
            return
        }
        self.resultLabel.text = baseText.hasher.hashed(hashType, output: .hex)
    }
}

extension HashType {
    
    static func hashType(from index: Int) -> HashType? {
        switch index {
        case 0:
            return .md5
        case 1:
            return .sha1
        case 2:
            return .sha224
        case 3:
            return .sha256
        case 4:
            return .sha384
        case 5:
            return .sha512
        default:
            return nil
        }
    }
}

