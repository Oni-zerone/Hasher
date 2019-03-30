//
//  SHA1Spec.swift
//  Hasher_Tests
//
//  Created by Andrea Altea on 11/03/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import Hasher

// Reference hashes got from https://quickhash.com

class HashSHA1Spec: QuickSpec {
    override func spec() {
        
        describe("Hasher") {
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
        }
    }
}
