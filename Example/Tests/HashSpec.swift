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
            
            context("check SHA1 hashes from strings") {
                it("Get correct hash as HEX") {
                    expect("Hello friend. Hello friend? That's lame. Maybe I should give you a name.".hasher.sha1())
                        .to(equal("eefecb14f8e213a96772534c76bcc4d07d7ebff2"))
                    expect("The douche I was dating proposed to me, can you believe? I mean, what an asshole.".hasher.sha1())
                        .to(equal("1bfdbdb968bbf19f97153eb8a083f757ce28a78e"))
                    expect("That neat little ditty was Trenton's idea. She may look innocent, but I'd be careful. She's got some Allah Akbar in her.".hasher.sha1())
                        .to(equal("4edcc94527aa0553005bcda3ab7404e98f0159b0"))
                    expect("The world is a dangerous place, Elliot, not because of those who do evil, but because of those who look on and do nothing.".hasher.sha1())
                        .to(equal("8a0f740646877faa9dfb57ddea5ecda0f529b0c4"))
                    expect("People who get violent get that way because they can't communicate.".hasher.sha1())
                        .to(equal("e0d93b729ecaa45ae1ba4eaf309157b9f9bffb8e"))
                    expect("Shit. I'm gonna have to let him hug me, aren't I?".hasher.sha1())
                        .to(equal("d083bc7df97d805d9a1897285a79e1e8b6c054c2"))
                    expect("True courage is about being honest with yourself. Especially when it's difficult.".hasher.sha1())
                        .to(equal("7812af01c9df4ea0002ce34dda6756fa5820306c"))
                    expect("Life is so much easier when you're numb.".hasher.sha1())
                        .to(equal("b1e061b9af53918fb9318981275d2c4930702725"))
                    expect("".hasher.sha1()).to(equal("da39a3ee5e6b4b0d3255bfef95601890afd80709"))
                }
                
                it("Get correct hash as base64 encoded") {
                    expect("Hello friend. Hello friend? That's lame. Maybe I should give you a name.".hasher.sha1(.base64))
                        .to(equal("7v7LFPjiE6lnclNMdrzE0H1+v/I="))
                    expect("The douche I was dating proposed to me, can you believe? I mean, what an asshole.".hasher.sha1(.base64))
                        .to(equal("G/29uWi78Z+XFT64oIP3V84op44="))
                    expect("That neat little ditty was Trenton's idea. She may look innocent, but I'd be careful. She's got some Allah Akbar in her.".hasher.sha1(.base64))
                        .to(equal("TtzJRSeqBVMAW82jq3QE6Y8BWbA="))
                    expect("The world is a dangerous place, Elliot, not because of those who do evil, but because of those who look on and do nothing.".hasher.sha1(.base64))
                        .to(equal("ig90BkaHf6qd+1fd6l7NoPUpsMQ="))
                    expect("People who get violent get that way because they can't communicate.".hasher.sha1(.base64))
                        .to(equal("4Nk7cp7KpFrhuk6vMJFXufm/+44="))
                    expect("Shit. I'm gonna have to let him hug me, aren't I?".hasher.sha1(.base64))
                        .to(equal("0IO8ffl9gF2aGJcoWnnh6LbAVMI="))
                    expect("True courage is about being honest with yourself. Especially when it's difficult.".hasher.sha1(.base64))
                        .to(equal("eBKvAcnfTqAALONN2mdW+lggMGw="))
                    expect("Life is so much easier when you're numb.".hasher.sha1(.base64))
                        .to(equal("seBhua9TkY+5MYmBJ10sSTBwJyU="))
                    expect("".hasher.sha1(.base64)).to(equal("2jmj7l5rSw0yVb/vlWAYkK/YBwk="))
                }
            }
            
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
