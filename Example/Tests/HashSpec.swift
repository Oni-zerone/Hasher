//
//  HashSpec.swift
//  Hasher_Example
//
//  Created by Andrea Altea on 11/03/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import Hasher

// Reference hashes got from https://quickhash.com

class HashSpec: QuickSpec {
    override func spec() {
        
        describe("Hasher") {
            context("check MD5 hashes from strings") {
                it("Get correct hash as HEX") {
                    expect("Hello friend. Hello friend? That's lame. Maybe I should give you a name.".hasher.md5())
                        .to(equal("cde37111bae8e8de6c360c94739b74f3"))
                    expect("The douche I was dating proposed to me, can you believe? I mean, what an asshole.".hasher.md5())
                        .to(equal("dc20ac6364560cdf00cde343c9ab070c"))
                    expect("That neat little ditty was Trenton's idea. She may look innocent, but I'd be careful. She's got some Allah Akbar in her.".hasher.md5())
                        .to(equal("78bedad059ff7da5fa74f779fce6a817"))
                    expect("The world is a dangerous place, Elliot, not because of those who do evil, but because of those who look on and do nothing.".hasher.md5())
                        .to(equal("e8396468b43a78f1dbbb7237d312b671"))
                    expect("People who get violent get that way because they can't communicate.".hasher.md5())
                        .to(equal("21750081e86864d32881139b15afb69a"))
                    expect("Shit. I'm gonna have to let him hug me, aren't I?".hasher.md5())
                        .to(equal("5a473ffe33375bcaf8d69c36946200bd"))
                    expect("True courage is about being honest with yourself. Especially when it's difficult.".hasher.md5())
                        .to(equal("c8a8166c9385a3175ea363c11dfb4f51"))
                    expect("Life is so much easier when you're numb.".hasher.md5())
                        .to(equal("44163d574460ec7171a860adf1f8a890"))
                    expect("".hasher.md5()).to(equal("d41d8cd98f00b204e9800998ecf8427e"))
                }

                it("Get correct hash as base64 encoded") {
                    expect("Hello friend. Hello friend? That's lame. Maybe I should give you a name.".hasher.md5(.base64))
                        .to(equal("zeNxEbro6N5sNgyUc5t08w=="))
                    expect("The douche I was dating proposed to me, can you believe? I mean, what an asshole.".hasher.md5(.base64))
                        .to(equal("3CCsY2RWDN8AzeNDyasHDA=="))
                    expect("That neat little ditty was Trenton's idea. She may look innocent, but I'd be careful. She's got some Allah Akbar in her.".hasher.md5(.base64))
                        .to(equal("eL7a0Fn/faX6dPd5/OaoFw=="))
                    expect("The world is a dangerous place, Elliot, not because of those who do evil, but because of those who look on and do nothing.".hasher.md5(.base64))
                        .to(equal("6DlkaLQ6ePHbu3I30xK2cQ=="))
                    expect("People who get violent get that way because they can't communicate.".hasher.md5(.base64))
                        .to(equal("IXUAgehoZNMogRObFa+2mg=="))
                    expect("Shit. I'm gonna have to let him hug me, aren't I?".hasher.md5(.base64))
                        .to(equal("Wkc//jM3W8r41pw2lGIAvQ=="))
                    expect("True courage is about being honest with yourself. Especially when it's difficult.".hasher.md5(.base64))
                        .to(equal("yKgWbJOFoxdeo2PBHftPUQ=="))
                    expect("Life is so much easier when you're numb.".hasher.md5(.base64))
                        .to(equal("RBY9V0Rg7HFxqGCt8fiokA=="))
                    expect("".hasher.md5(.base64)).to(equal("1B2M2Y8AsgTpgAmY7PhCfg=="))
                }
            }
        }
    }
}
