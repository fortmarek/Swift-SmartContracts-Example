//
//  ViewController.swift
//  EthereumContracts
//
//  Created by Marek Fořt on 9/27/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import UIKit
import EtherKit

class ViewController: UIViewController {

    let query = EtherQuery(URL(string: "https://rinkeby.infura.io/v3/9f1a1e0782ab40c8b39fe189615714d0")!, connectionMode: .http)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Use your own mnemonic sentence
        let sentence: Mnemonic.MnemonicSentence = Mnemonic.MnemonicSentence(["truly", "law", "tide", "pony", "media", "degree", "two", "goat", "ignore", "twice", "project", "message", "vanish", "spring", "movie"])

        let walletStorage = KeychainStorageStrategy(identifier: "cz.ackee.etherkit.example")

        HDKey.Private.create(
            with: MnemonicStorageStrategy(walletStorage),
            mnemonic: sentence,
            network: .main,
            path: [
                KeyPathNode(at: 44, hardened: true),
                KeyPathNode(at: 60, hardened: true),
                KeyPathNode(at: 0, hardened: true),
                KeyPathNode(at: 0),
                ]
        ) { [weak self] _ in
            self?.testContract()
        }
    }

    private func testContract() {
        let walletStorage = KeychainStorageStrategy(identifier: "cz.ackee.etherkit.example")
        let key = HDKey.Private(walletStorage, network: .rinkeby, path: [
            KeyPathNode(at: 44, hardened: true),
            KeyPathNode(at: 60, hardened: true),
            KeyPathNode(at: 0, hardened: true),
            KeyPathNode(at: 1),
            ])

        let testContractAddress = try! Address(describing: "0xb8f016F3529b198b4a06574f3E9BDc04948ad852")
        query.helloContract(at: testContractAddress).testString(greetString: "Greetings!").send(using: key, amount: Wei(10)).startWithResult { result in
            switch result {
            case .success(let hash):
                print(hash)
                print("Test greetings succeeded!")
            case .failure(let error):
                print(error)
                print("Test greetings failed.")
            }
        }
    }


}

