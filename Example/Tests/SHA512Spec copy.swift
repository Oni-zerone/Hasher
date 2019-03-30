//
//  SHA512Spec.swift
//  Hasher_Example
//
//  Created by Andrea Altea on 11/03/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import Hasher

// Reference hashes got from https://quickhash.com

class HashSHA512Spec: QuickSpec {
    override func spec() {
        
        describe("Hasher") {
            context("check SHA512 hashes from strings") {
                it("Get correct hash as HEX") {
                    expect("Hello friend. Hello friend? That's lame. Maybe I should give you a name.".hasher.sha512())
                        .to(equal("082fcbf38d1b4ab45aa558c4b45d2b71806d85eb191040e8975900750725c40155e6d762c080d6a9e1aed843c38dba64c035f52db17eef83d0ce200d69757dfd"))
                    expect("The douche I was dating proposed to me, can you believe? I mean, what an asshole.".hasher.sha512())
                        .to(equal("8a3a44ddbd982328fd356abbbdcd4861f2d72c84ff85c3c4ff66ce8d95930dc5d054406878275f84944cfed012152e96475be91040e9e7e618c948aa566597c7"))
                    expect("That neat little ditty was Trenton's idea. She may look innocent, but I'd be careful. She's got some Allah Akbar in her.".hasher.sha512())
                        .to(equal("cdacb36fb702d1b49b5ed8487d9b176ae4f3b7667a414debb5abf75166299e58cda512487cd7eba2225fe56d9651829d3f324efe8ddc0d0c48352e62654a0412"))
                    expect("The world is a dangerous place, Elliot, not because of those who do evil, but because of those who look on and do nothing.".hasher.sha512())
                        .to(equal("322cfcab8f451789c9c2e0d3aeb2d0ad25a08d169e9bc5dd0b47c1e78e1a0913db7bdb5673fd90d4040e12072c248d99f2fe7006b81282abe27480fd130a670d"))
                    expect("People who get violent get that way because they can't communicate.".hasher.sha512())
                        .to(equal("c66ad7f1d3f208f736d632aba0b77e5f3671c5365d64e30d5ee75ec18fa33c4addc2c0c262c7a00fb50fd1e81ec8597fae1064981744052c0bb37e3ab30ac960"))
                    expect("Shit. I'm gonna have to let him hug me, aren't I?".hasher.sha512())
                        .to(equal("6e96d3b32454c59edfe739e325370d31c8839c5bd1251e481365dd55ef2c50b7bc4bcdb7ea97572c493c865f56b7732c954327042efbe34a489c1ac416bd6def"))
                    expect("True courage is about being honest with yourself. Especially when it's difficult.".hasher.sha512())
                        .to(equal("6a699a30eb602cee02653343e6bb648516fc142a8d2295f6f14ac242b8cf24894dc0df59cc03da2c9c9f468b9a52a60c8ac61d19622bbe0ee0046330494d89a3"))
                    expect("Life is so much easier when you're numb.".hasher.sha512())
                        .to(equal("9972004e5ca45d11a1c832b5cd7fc2e6be508396c38f30163ddac4524efb631860dcb8b15c7ff076a25d65ff2cd92c74bc4044c4392a9c8b086459f60719f02b"))
                    expect("".hasher.sha512()).to(equal("cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e"))
                }
                
                it("Get correct hash as base64 encoded") {
                    expect("Hello friend. Hello friend? That's lame. Maybe I should give you a name.".hasher.sha512(.base64))
                        .to(equal("CC/L840bSrRapVjEtF0rcYBthesZEEDol1kAdQclxAFV5tdiwIDWqeGu2EPDjbpkwDX1LbF+74PQziANaXV9/Q=="))
                    expect("The douche I was dating proposed to me, can you believe? I mean, what an asshole.".hasher.sha512(.base64))
                        .to(equal("ijpE3b2YIyj9NWq7vc1IYfLXLIT/hcPE/2bOjZWTDcXQVEBoeCdfhJRM/tASFS6WR1vpEEDp5+YYyUiqVmWXxw=="))
                    expect("That neat little ditty was Trenton's idea. She may look innocent, but I'd be careful. She's got some Allah Akbar in her.".hasher.sha512(.base64))
                        .to(equal("zayzb7cC0bSbXthIfZsXauTzt2Z6QU3rtav3UWYpnljNpRJIfNfroiJf5W2WUYKdPzJO/o3cDQxINS5iZUoEEg=="))
                    expect("The world is a dangerous place, Elliot, not because of those who do evil, but because of those who look on and do nothing.".hasher.sha512(.base64))
                        .to(equal("Miz8q49FF4nJwuDTrrLQrSWgjRaem8XdC0fB544aCRPbe9tWc/2Q1AQOEgcsJI2Z8v5wBrgSgqvidID9EwpnDQ=="))
                    expect("People who get violent get that way because they can't communicate.".hasher.sha512(.base64))
                        .to(equal("xmrX8dPyCPc21jKroLd+XzZxxTZdZOMNXudewY+jPErdwsDCYsegD7UP0egeyFl/rhBkmBdEBSwLs346swrJYA=="))
                    expect("Shit. I'm gonna have to let him hug me, aren't I?".hasher.sha512(.base64))
                        .to(equal("bpbTsyRUxZ7f5znjJTcNMciDnFvRJR5IE2XdVe8sULe8S8236pdXLEk8hl9Wt3MslUMnBC7740pInBrEFr1t7w=="))
                    expect("True courage is about being honest with yourself. Especially when it's difficult.".hasher.sha512(.base64))
                        .to(equal("ammaMOtgLO4CZTND5rtkhRb8FCqNIpX28UrCQrjPJIlNwN9ZzAPaLJyfRouaUqYMisYdGWIrvg7gBGMwSU2Jow=="))
                    expect("Life is so much easier when you're numb.".hasher.sha512(.base64))
                        .to(equal("mXIATlykXRGhyDK1zX/C5r5Qg5bDjzAWPdrEUk77Yxhg3LixXH/wdqJdZf8s2Sx0vEBExDkqnIsIZFn2BxnwKw=="))
                    expect("".hasher.sha512(.base64)).to(equal("z4PhNX7vuL3xVChQ1m2AB9Yg5AULVxXcg/SpIdNs6c5H0NE8XYXysP+DGNKHfuwvY7kxvUdBeoGlODJ6+SfaPg=="))
                }
            }

        }
    }
}
