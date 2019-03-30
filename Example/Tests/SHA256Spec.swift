//
//  SHA256Spec.swift
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
            context("check SHA256 hashes from strings") {
                it("Get correct hash as HEX") {
                    expect("Hello friend. Hello friend? That's lame. Maybe I should give you a name.".hasher.sha256())
                        .to(equal("c0e06cb3f649311480ec0d4420600c1b3ce56375c1e9bff5d851ca5e7299a8bd"))
                    expect("The douche I was dating proposed to me, can you believe? I mean, what an asshole.".hasher.sha256())
                        .to(equal("866a67192923d88a851612359d7fc90d749131e2da8cbb5b7c125178e5a481a8"))
                    expect("That neat little ditty was Trenton's idea. She may look innocent, but I'd be careful. She's got some Allah Akbar in her.".hasher.sha256())
                        .to(equal("bea00e008e87435a2436decb5a51c2d70627e2d6567856ed3233917be9bfc787"))
                    expect("The world is a dangerous place, Elliot, not because of those who do evil, but because of those who look on and do nothing.".hasher.sha256())
                        .to(equal("e329e343e9e6aa800dc0e598163365005ca250a076d06fc51826ad94383c6978"))
                    expect("People who get violent get that way because they can't communicate.".hasher.sha256())
                        .to(equal("6bdf930979291fb8c1dc85303a85e5aec689147fa925023d8ed93a5263aa5d00"))
                    expect("Shit. I'm gonna have to let him hug me, aren't I?".hasher.sha256())
                        .to(equal("97657b1bf7e4b256fb672eb4928f4fcc2aa63b35956a35a7ae0e953141d84a5e"))
                    expect("True courage is about being honest with yourself. Especially when it's difficult.".hasher.sha256())
                        .to(equal("ab01dbf11103ba2a3a5f147dd1fc944cbdda135f630214e898978cdf03e94c2e"))
                    expect("Life is so much easier when you're numb.".hasher.sha256())
                        .to(equal("06f4ae45868b8710f350d8a2ff0d8f243e8fe9b22d9e1c2671175b196d45f8e0"))
                    expect("".hasher.sha256()).to(equal("e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"))
                }
                
                it("Get correct hash as base64 encoded") {
                    expect("Hello friend. Hello friend? That's lame. Maybe I should give you a name.".hasher.sha256(.base64))
                        .to(equal("wOBss/ZJMRSA7A1EIGAMGzzlY3XB6b/12FHKXnKZqL0="))
                    expect("The douche I was dating proposed to me, can you believe? I mean, what an asshole.".hasher.sha256(.base64))
                        .to(equal("hmpnGSkj2IqFFhI1nX/JDXSRMeLajLtbfBJReOWkgag="))
                    expect("That neat little ditty was Trenton's idea. She may look innocent, but I'd be careful. She's got some Allah Akbar in her.".hasher.sha256(.base64))
                        .to(equal("vqAOAI6HQ1okNt7LWlHC1wYn4tZWeFbtMjORe+m/x4c="))
                    expect("The world is a dangerous place, Elliot, not because of those who do evil, but because of those who look on and do nothing.".hasher.sha256(.base64))
                        .to(equal("4ynjQ+nmqoANwOWYFjNlAFyiUKB20G/FGCatlDg8aXg="))
                    expect("People who get violent get that way because they can't communicate.".hasher.sha256(.base64))
                        .to(equal("a9+TCXkpH7jB3IUwOoXlrsaJFH+pJQI9jtk6UmOqXQA="))
                    expect("Shit. I'm gonna have to let him hug me, aren't I?".hasher.sha256(.base64))
                        .to(equal("l2V7G/fkslb7Zy60ko9PzCqmOzWVajWnrg6VMUHYSl4="))
                    expect("True courage is about being honest with yourself. Especially when it's difficult.".hasher.sha256(.base64))
                        .to(equal("qwHb8REDuio6XxR90fyUTL3aE19jAhTomJeM3wPpTC4="))
                    expect("Life is so much easier when you're numb.".hasher.sha256(.base64))
                        .to(equal("BvSuRYaLhxDzUNii/w2PJD6P6bItnhwmcRdbGW1F+OA="))
                    expect("".hasher.sha256(.base64)).to(equal("47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU="))
                }
            }

        }
    }
}
