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

    @IBOutlet weak var outputTypeSelector: UISegmentedControl!
    @IBOutlet weak var hashTypeSelector: UISegmentedControl!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    let availableHashes = ["md5", "sha1", "sha224", "sha256", "sha384", "sha512"]
    let availableOutputs = ["hex", "base64"]
    
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
        
        self.outputTypeSelector.removeAllSegments()
        self.availableOutputs.enumerated().forEach { (index, output) in
            self.outputTypeSelector.insertSegment(withTitle: output, at: index, animated: false)
        }
        self.outputTypeSelector.selectedSegmentIndex = 0
    }
    
    @IBAction func didChangeOutputType(_ sender: Any) {
        self.updateHashValue()
    }

    @IBAction func didChangeHashType(_ sender: Any) {
        self.updateHashValue()
    }
    
    @IBAction func didUpdateField(_ sender: Any) {
        self.updateHashValue()
    }
    
    @IBAction func copyHashAction(_ sender: Any) {
        UIPasteboard.general.string = self.resultLabel.text
    }
    
    func updateHashValue() {
        guard let hashType = HashType.hashType(from: self.hashTypeSelector.selectedSegmentIndex),
            let outputType = OutputType.outputType(from: self.outputTypeSelector.selectedSegmentIndex),
            let baseText = self.textField.text, !baseText.isEmpty else {
            self.resultLabel.text = "Type something."
            return
        }
        self.resultLabel.text = baseText.hasher.hashed(hashType,
                                                       output: outputType)
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

extension OutputType {
    
    static func outputType(from index: Int) -> OutputType? {
        switch index {
        case 0:
            return .hex
        case 1:
            return .base64
        default:
            return nil
        }
    }
}
