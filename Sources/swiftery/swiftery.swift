import Sodium
import Foundation
import BLAKE3

public struct Swiftery {
    public private(set) var text = "Hello, World!"

    public init() {
    }

    public func keys() {

        let sodium = Sodium()
        let curve25519KeyPair = sodium.box.keyPair()
        let privateKey = curve25519KeyPair!.secretKey
        let publicKey = curve25519KeyPair!.publicKey
        let pri = sodium.utils.bin2base64(privateKey, variant: .URLSAFE_NO_PADDING)!
        print(pri)
        print(pri.count)
        print(sodium.utils.bin2base64(publicKey, variant: .URLSAFE_NO_PADDING)!)

        print(BLAKE3.hash(contentsOf: publicKey))
        print(sodium.utils.bin2base64(BLAKE3.hash(contentsOf: publicKey), variant: .URLSAFE_NO_PADDING)!)
    }
}
