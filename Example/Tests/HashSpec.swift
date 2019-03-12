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
                        .to(equal("Y2RlMzcxMTFiYWU4ZThkZTZjMzYwYzk0NzM5Yjc0ZjM="))
                    expect("The douche I was dating proposed to me, can you believe? I mean, what an asshole.".hasher.md5(.base64))
                        .to(equal("ZGMyMGFjNjM2NDU2MGNkZjAwY2RlMzQzYzlhYjA3MGM"))
                    expect("That neat little ditty was Trenton's idea. She may look innocent, but I'd be careful. She's got some Allah Akbar in her.".hasher.md5(.base64))
                        .to(equal("NzhiZWRhZDA1OWZmN2RhNWZhNzRmNzc5ZmNlNmE4MTc"))
                    expect("The world is a dangerous place, Elliot, not because of those who do evil, but because of those who look on and do nothing.".hasher.md5(.base64))
                        .to(equal("ZTgzOTY0NjhiNDNhNzhmMWRiYmI3MjM3ZDMxMmI2NzE="))
                    expect("People who get violent get that way because they can't communicate.".hasher.md5(.base64))
                        .to(equal("MjE3NTAwODFlODY4NjRkMzI4ODExMzliMTVhZmI2OWE="))
                    expect("Shit. I'm gonna have to let him hug me, aren't I?".hasher.md5(.base64))
                        .to(equal("NWE0NzNmZmUzMzM3NWJjYWY4ZDY5YzM2OTQ2MjAwYmQ="))
                    expect("True courage is about being honest with yourself. Especially when it's difficult.".hasher.md5(.base64))
                        .to(equal("YzhhODE2NmM5Mzg1YTMxNzVlYTM2M2MxMWRmYjRmNTE="))
                    expect("Life is so much easier when you're numb.".hasher.md5(.base64))
                        .to(equal("NDQxNjNkNTc0NDYwZWM3MTcxYTg2MGFkZjFmOGE4OTA="))
                    expect("".hasher.md5(.base64)).to(equal("ZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2U="))
                }
            }
        }
    }
}
