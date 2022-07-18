// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: uno.command.proto
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

struct UNO_Command {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var seqID: Int64 {
    get {return _seqID ?? 0}
    set {_seqID = newValue}
  }
  /// Returns true if `seqID` has been explicitly set.
  var hasSeqID: Bool {return self._seqID != nil}
  /// Clears the value of `seqID`. Subsequent reads from it will return its default value.
  mutating func clearSeqID() {self._seqID = nil}

  var uuid: String {
    get {return _uuid ?? String()}
    set {_uuid = newValue}
  }
  /// Returns true if `uuid` has been explicitly set.
  var hasUuid: Bool {return self._uuid != nil}
  /// Clears the value of `uuid`. Subsequent reads from it will return its default value.
  mutating func clearUuid() {self._uuid = nil}

  var type: UNO_Command.TypeEnum {
    get {return _type ?? .start}
    set {_type = newValue}
  }
  /// Returns true if `type` has been explicitly set.
  var hasType: Bool {return self._type != nil}
  /// Clears the value of `type`. Subsequent reads from it will return its default value.
  mutating func clearType() {self._type = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum TypeEnum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case start // = 0
    case end // = 1

    init() {
      self = .start
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .start
      case 1: self = .end
      default: return nil
      }
    }

    var rawValue: Int {
      switch self {
      case .start: return 0
      case .end: return 1
      }
    }

  }

  init() {}

  fileprivate var _seqID: Int64? = nil
  fileprivate var _uuid: String? = nil
  fileprivate var _type: UNO_Command.TypeEnum? = nil
}

#if swift(>=4.2)

extension UNO_Command.TypeEnum: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

#if swift(>=5.5) && canImport(_Concurrency)
extension UNO_Command: @unchecked Sendable {}
extension UNO_Command.TypeEnum: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "UNO"

extension UNO_Command: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Command"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "seqID"),
    2: .same(proto: "uuid"),
    3: .same(proto: "type"),
  ]

  public var isInitialized: Bool {
    if self._seqID == nil {return false}
    if self._uuid == nil {return false}
    if self._type == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self._seqID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._uuid) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self._type) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._seqID {
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._uuid {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._type {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: UNO_Command, rhs: UNO_Command) -> Bool {
    if lhs._seqID != rhs._seqID {return false}
    if lhs._uuid != rhs._uuid {return false}
    if lhs._type != rhs._type {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension UNO_Command.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "START"),
    1: .same(proto: "END"),
  ]
}
