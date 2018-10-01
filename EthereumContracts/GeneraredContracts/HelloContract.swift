// Generated using ContractGen
// swiftlint:disable file_length

import ReactiveSwift
import EtherKit
import BigInt

struct HelloContractBox {
    fileprivate let etherQuery: EtherQuerying
    fileprivate let at: Address

    init(etherQuery: EtherQuerying, at: Address) {
        self.etherQuery = etherQuery
        self.at = at
    }
    
    func setPrices<T: PrivateKeyType>(newSellPrice: BigUInt, newBuyPrice: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let setPricesFunctionCall = Function(name: "setPrices", parameters: [newSellPrice.abiType, newBuyPrice.abiType] as [ABIType])
                let setPricesData = GeneralData(data: setPricesFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: setPricesData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func name<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let nameFunctionCall = Function(name: "name", parameters: [] as [ABIType])
                let nameData = GeneralData(data: nameFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: nameData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func approve<T: PrivateKeyType>(spender: Address, value: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let approveFunctionCall = Function(name: "approve", parameters: [spender.abiType, value.abiType] as [ABIType])
                let approveData = GeneralData(data: approveFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: approveData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func totalSupply<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let totalSupplyFunctionCall = Function(name: "totalSupply", parameters: [] as [ABIType])
                let totalSupplyData = GeneralData(data: totalSupplyFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: totalSupplyData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func transferFrom<T: PrivateKeyType>(from: Address, to: Address, value: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let transferFromFunctionCall = Function(name: "transferFrom", parameters: [from.abiType, to.abiType, value.abiType] as [ABIType])
                let transferFromData = GeneralData(data: transferFromFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: transferFromData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func testInt256<T: PrivateKeyType>(value: BigInt) -> PayableContractMethodInvocation<T> {
        let send: (_ using: T, _ amount: Wei) -> SignalProducer<Hash, EtherKitError> = { using, amount in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let testInt256FunctionCall = Function(name: "testInt256", parameters: [value.abiType] as [ABIType])
                let testInt256Data = GeneralData(data: testInt256FunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: amount, data: testInt256Data, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return PayableContractMethodInvocation(send: send)
    }

    func decimals<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let decimalsFunctionCall = Function(name: "decimals", parameters: [] as [ABIType])
                let decimalsData = GeneralData(data: decimalsFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: decimalsData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func burn<T: PrivateKeyType>(value: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let burnFunctionCall = Function(name: "burn", parameters: [value.abiType] as [ABIType])
                let burnData = GeneralData(data: burnFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: burnData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func testData<T: PrivateKeyType>(extraData: Data) -> PayableContractMethodInvocation<T> {
        let send: (_ using: T, _ amount: Wei) -> SignalProducer<Hash, EtherKitError> = { using, amount in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let testDataFunctionCall = Function(name: "testData", parameters: [.bytes(count: .unlimited, value: extraData)] as [ABIType])
                let testDataData = GeneralData(data: testDataFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: amount, data: testDataData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return PayableContractMethodInvocation(send: send)
    }

    func sellPrice<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let sellPriceFunctionCall = Function(name: "sellPrice", parameters: [] as [ABIType])
                let sellPriceData = GeneralData(data: sellPriceFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: sellPriceData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func testUint8<T: PrivateKeyType>(decimalUnits: UInt8) -> PayableContractMethodInvocation<T> {
        let send: (_ using: T, _ amount: Wei) -> SignalProducer<Hash, EtherKitError> = { using, amount in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let testUint8FunctionCall = Function(name: "testUint8", parameters: [decimalUnits.abiType] as [ABIType])
                let testUint8Data = GeneralData(data: testUint8FunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: amount, data: testUint8Data, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return PayableContractMethodInvocation(send: send)
    }

    func testString<T: PrivateKeyType>(greetString: String) -> PayableContractMethodInvocation<T> {
        let send: (_ using: T, _ amount: Wei) -> SignalProducer<Hash, EtherKitError> = { using, amount in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let testStringFunctionCall = Function(name: "testString", parameters: [greetString.abiType] as [ABIType])
                let testStringData = GeneralData(data: testStringFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: amount, data: testStringData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return PayableContractMethodInvocation(send: send)
    }

    func testViewFunc<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let testViewFuncFunctionCall = Function(name: "testViewFunc", parameters: [] as [ABIType])
                let testViewFuncData = GeneralData(data: testViewFuncFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: testViewFuncData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func mintToken<T: PrivateKeyType>(target: Address, mintedAmount: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let mintTokenFunctionCall = Function(name: "mintToken", parameters: [target.abiType, mintedAmount.abiType] as [ABIType])
                let mintTokenData = GeneralData(data: mintTokenFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: mintTokenData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func burnFrom<T: PrivateKeyType>(from: Address, value: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let burnFromFunctionCall = Function(name: "burnFrom", parameters: [from.abiType, value.abiType] as [ABIType])
                let burnFromData = GeneralData(data: burnFromFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: burnFromData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func buyPrice<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let buyPriceFunctionCall = Function(name: "buyPrice", parameters: [] as [ABIType])
                let buyPriceData = GeneralData(data: buyPriceFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: buyPriceData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func owner<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let ownerFunctionCall = Function(name: "owner", parameters: [] as [ABIType])
                let ownerData = GeneralData(data: ownerFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: ownerData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func symbol<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let symbolFunctionCall = Function(name: "symbol", parameters: [] as [ABIType])
                let symbolData = GeneralData(data: symbolFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: symbolData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func buy<T: PrivateKeyType>() -> PayableContractMethodInvocation<T> {
        let send: (_ using: T, _ amount: Wei) -> SignalProducer<Hash, EtherKitError> = { using, amount in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let buyFunctionCall = Function(name: "buy", parameters: [] as [ABIType])
                let buyData = GeneralData(data: buyFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: amount, data: buyData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return PayableContractMethodInvocation(send: send)
    }

    func transfer<T: PrivateKeyType>(to: Address, value: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let transferFunctionCall = Function(name: "transfer", parameters: [to.abiType, value.abiType] as [ABIType])
                let transferData = GeneralData(data: transferFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: transferData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func testUintArray<T: PrivateKeyType>(uintArray: Array<BigUInt>) -> PayableContractMethodInvocation<T> {
        let send: (_ using: T, _ amount: Wei) -> SignalProducer<Hash, EtherKitError> = { using, amount in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let testUintArrayFunctionCall = Function(name: "testUintArray", parameters: [uintArray.abiType] as [ABIType])
                let testUintArrayData = GeneralData(data: testUintArrayFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: amount, data: testUintArrayData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return PayableContractMethodInvocation(send: send)
    }

    func testBytes32Array<T: PrivateKeyType>(bytesArray: Array<Data>) -> PayableContractMethodInvocation<T> {
        let send: (_ using: T, _ amount: Wei) -> SignalProducer<Hash, EtherKitError> = { using, amount in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let testBytes32ArrayFunctionCall = Function(name: "testBytes32Array", parameters: [.array(count: .unlimited, type: .bytes(count: .constrained(32), value: Data()), value: bytesArray.map { .bytes(count: .constrained(32), value: $0) })] as [ABIType])
                let testBytes32ArrayData = GeneralData(data: testBytes32ArrayFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: amount, data: testBytes32ArrayData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return PayableContractMethodInvocation(send: send)
    }

    func approveAndCall<T: PrivateKeyType>(spender: Address, value: BigUInt, extraData: Data) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let approveAndCallFunctionCall = Function(name: "approveAndCall", parameters: [spender.abiType, value.abiType, .bytes(count: .unlimited, value: extraData)] as [ABIType])
                let approveAndCallData = GeneralData(data: approveAndCallFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: approveAndCallData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func testInt8<T: PrivateKeyType>(value: Int8) -> PayableContractMethodInvocation<T> {
        let send: (_ using: T, _ amount: Wei) -> SignalProducer<Hash, EtherKitError> = { using, amount in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let testInt8FunctionCall = Function(name: "testInt8", parameters: [value.abiType] as [ABIType])
                let testInt8Data = GeneralData(data: testInt8FunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: amount, data: testInt8Data, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return PayableContractMethodInvocation(send: send)
    }

    func sell<T: PrivateKeyType>(amountToSend: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let sellFunctionCall = Function(name: "sell", parameters: [amountToSend.abiType] as [ABIType])
                let sellData = GeneralData(data: sellFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: sellData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func freezeAccount<T: PrivateKeyType>(target: Address, freeze: Bool) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let freezeAccountFunctionCall = Function(name: "freezeAccount", parameters: [target.abiType, freeze.abiType] as [ABIType])
                let freezeAccountData = GeneralData(data: freezeAccountFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: freezeAccountData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func testBool<T: PrivateKeyType>(trueOrFalse: Bool) -> PayableContractMethodInvocation<T> {
        let send: (_ using: T, _ amount: Wei) -> SignalProducer<Hash, EtherKitError> = { using, amount in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let testBoolFunctionCall = Function(name: "testBool", parameters: [trueOrFalse.abiType] as [ABIType])
                let testBoolData = GeneralData(data: testBoolFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: amount, data: testBoolData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return PayableContractMethodInvocation(send: send)
    }

    func transferOwnership<T: PrivateKeyType>(newOwner: Address) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let transferOwnershipFunctionCall = Function(name: "transferOwnership", parameters: [newOwner.abiType] as [ABIType])
                let transferOwnershipData = GeneralData(data: transferOwnershipFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: transferOwnershipData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }
}

extension EtherQuery {
    func helloContract(at: Address) -> HelloContractBox {
        return HelloContractBox(etherQuery: self, at: at)
    }
}
