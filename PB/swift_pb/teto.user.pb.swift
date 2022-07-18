// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: teto.user.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct TeToUser_User {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var uuid: String {
    get {return _uuid ?? String()}
    set {_uuid = newValue}
  }
  /// Returns true if `uuid` has been explicitly set.
  var hasUuid: Bool {return self._uuid != nil}
  /// Clears the value of `uuid`. Subsequent reads from it will return its default value.
  mutating func clearUuid() {self._uuid = nil}

  var name: String {
    get {return _name ?? String()}
    set {_name = newValue}
  }
  /// Returns true if `name` has been explicitly set.
  var hasName: Bool {return self._name != nil}
  /// Clears the value of `name`. Subsequent reads from it will return its default value.
  mutating func clearName() {self._name = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _uuid: String? = nil
  fileprivate var _name: String? = nil
}

struct TeToUser_UserInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var type: TeToUser_UserInfo.TypeEnum {
    get {return _type ?? .add}
    set {_type = newValue}
  }
  /// Returns true if `type` has been explicitly set.
  var hasType: Bool {return self._type != nil}
  /// Clears the value of `type`. Subsequent reads from it will return its default value.
  mutating func clearType() {self._type = nil}

  var user: TeToUser_User {
    get {return _user ?? TeToUser_User()}
    set {_user = newValue}
  }
  /// Returns true if `user` has been explicitly set.
  var hasUser: Bool {return self._user != nil}
  /// Clears the value of `user`. Subsequent reads from it will return its default value.
  mutating func clearUser() {self._user = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum TypeEnum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case add // = 0
    case change // = 1
    case leave // = 2

    init() {
      self = .add
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .add
      case 1: self = .change
      case 2: self = .leave
      default: return nil
      }
    }

    var rawValue: Int {
      switch self {
      case .add: return 0
      case .change: return 1
      case .leave: return 2
      }
    }

  }

  init() {}

  fileprivate var _type: TeToUser_UserInfo.TypeEnum? = nil
  fileprivate var _user: TeToUser_User? = nil
}

#if swift(>=4.2)

extension TeToUser_UserInfo.TypeEnum: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

#if swift(>=5.5) && canImport(_Concurrency)
extension TeToUser_User: @unchecked Sendable {}
extension TeToUser_UserInfo: @unchecked Sendable {}
extension TeToUser_UserInfo.TypeEnum: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TeTo_User"

extension TeToUser_User: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".User"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "name"),
  ]

  public var isInitialized: Bool {
    if self._uuid == nil {return false}
    if self._name == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._uuid) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._name) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._uuid {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._name {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TeToUser_User, rhs: TeToUser_User) -> Bool {
    if lhs._uuid != rhs._uuid {return false}
    if lhs._name != rhs._name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TeToUser_UserInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UserInfo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "user"),
  ]

  public var isInitialized: Bool {
    if self._type == nil {return false}
    if self._user == nil {return false}
    if let v = self._user, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._type) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._user) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._type {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._user {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TeToUser_UserInfo, rhs: TeToUser_UserInfo) -> Bool {
    if lhs._type != rhs._type {return false}
    if lhs._user != rhs._user {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TeToUser_UserInfo.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ADD"),
    1: .same(proto: "CHANGE"),
    2: .same(proto: "LEAVE"),
  ]
}
