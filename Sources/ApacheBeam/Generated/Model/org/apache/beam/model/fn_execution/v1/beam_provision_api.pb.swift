// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: org/apache/beam/model/fn_execution/v1/beam_provision_api.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

//
// Licensed to the Apache Software Foundation (ASF) under one
// or more contributor license agreements.  See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership.  The ASF licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License.  You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//
// Protocol Buffers describing the Provision API, for communicating with a runner
// for job and environment provisioning information over GRPC.

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

/// A request to get the provision info of a SDK harness worker instance.
struct Org_Apache_Beam_Model_FnExecution_V1_GetProvisionInfoRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// A response containing the provision info of a SDK harness worker instance.
struct Org_Apache_Beam_Model_FnExecution_V1_GetProvisionInfoResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var info: Org_Apache_Beam_Model_FnExecution_V1_ProvisionInfo {
    get {return _info ?? Org_Apache_Beam_Model_FnExecution_V1_ProvisionInfo()}
    set {_info = newValue}
  }
  /// Returns true if `info` has been explicitly set.
  var hasInfo: Bool {return self._info != nil}
  /// Clears the value of `info`. Subsequent reads from it will return its default value.
  mutating func clearInfo() {self._info = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _info: Org_Apache_Beam_Model_FnExecution_V1_ProvisionInfo? = nil
}

/// Runtime provisioning information for a SDK harness worker instance,
/// such as pipeline options, resource constraints and other job metadata
struct Org_Apache_Beam_Model_FnExecution_V1_ProvisionInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// (required) Pipeline options. For non-template jobs, the options are
  /// identical to what is passed to job submission.
  var pipelineOptions: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _storage._pipelineOptions ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_uniqueStorage()._pipelineOptions = newValue}
  }
  /// Returns true if `pipelineOptions` has been explicitly set.
  var hasPipelineOptions: Bool {return _storage._pipelineOptions != nil}
  /// Clears the value of `pipelineOptions`. Subsequent reads from it will return its default value.
  mutating func clearPipelineOptions() {_uniqueStorage()._pipelineOptions = nil}

  /// (required) The artifact retrieval token produced by
  /// LegacyArtifactStagingService.CommitManifestResponse.
  var retrievalToken: String {
    get {return _storage._retrievalToken}
    set {_uniqueStorage()._retrievalToken = newValue}
  }

  /// (optional) The endpoint that the runner is hosting for the SDK to submit
  /// status reports to during pipeline execution. This field will only be
  /// populated if the runner supports SDK status reports. For more details see
  /// https://s.apache.org/beam-fn-api-harness-status
  var statusEndpoint: Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor {
    get {return _storage._statusEndpoint ?? Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor()}
    set {_uniqueStorage()._statusEndpoint = newValue}
  }
  /// Returns true if `statusEndpoint` has been explicitly set.
  var hasStatusEndpoint: Bool {return _storage._statusEndpoint != nil}
  /// Clears the value of `statusEndpoint`. Subsequent reads from it will return its default value.
  mutating func clearStatusEndpoint() {_uniqueStorage()._statusEndpoint = nil}

  /// (optional) The logging endpoint this SDK should use.
  var loggingEndpoint: Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor {
    get {return _storage._loggingEndpoint ?? Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor()}
    set {_uniqueStorage()._loggingEndpoint = newValue}
  }
  /// Returns true if `loggingEndpoint` has been explicitly set.
  var hasLoggingEndpoint: Bool {return _storage._loggingEndpoint != nil}
  /// Clears the value of `loggingEndpoint`. Subsequent reads from it will return its default value.
  mutating func clearLoggingEndpoint() {_uniqueStorage()._loggingEndpoint = nil}

  /// (optional) The artifact retrieval endpoint this SDK should use.
  var artifactEndpoint: Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor {
    get {return _storage._artifactEndpoint ?? Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor()}
    set {_uniqueStorage()._artifactEndpoint = newValue}
  }
  /// Returns true if `artifactEndpoint` has been explicitly set.
  var hasArtifactEndpoint: Bool {return _storage._artifactEndpoint != nil}
  /// Clears the value of `artifactEndpoint`. Subsequent reads from it will return its default value.
  mutating func clearArtifactEndpoint() {_uniqueStorage()._artifactEndpoint = nil}

  /// (optional) The control endpoint this SDK should use.
  var controlEndpoint: Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor {
    get {return _storage._controlEndpoint ?? Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor()}
    set {_uniqueStorage()._controlEndpoint = newValue}
  }
  /// Returns true if `controlEndpoint` has been explicitly set.
  var hasControlEndpoint: Bool {return _storage._controlEndpoint != nil}
  /// Clears the value of `controlEndpoint`. Subsequent reads from it will return its default value.
  mutating func clearControlEndpoint() {_uniqueStorage()._controlEndpoint = nil}

  /// The set of dependencies that should be staged into this environment.
  var dependencies: [Org_Apache_Beam_Model_Pipeline_V1_ArtifactInformation] {
    get {return _storage._dependencies}
    set {_uniqueStorage()._dependencies = newValue}
  }

  /// (optional) A set of capabilities that this SDK is allowed to use in its
  /// interactions with this runner.
  var runnerCapabilities: [String] {
    get {return _storage._runnerCapabilities}
    set {_uniqueStorage()._runnerCapabilities = newValue}
  }

  /// (optional) Runtime environment metadata that are static throughout the
  /// pipeline execution.
  var metadata: Dictionary<String,String> {
    get {return _storage._metadata}
    set {_uniqueStorage()._metadata = newValue}
  }

  /// (optional) If this environment supports SIBLING_WORKERS, used to indicate
  /// the ids of sibling workers, if any, that should be started in addition
  /// to this worker (which already has its own worker id).
  var siblingWorkerIds: [String] {
    get {return _storage._siblingWorkerIds}
    set {_uniqueStorage()._siblingWorkerIds = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Org_Apache_Beam_Model_FnExecution_V1_GetProvisionInfoRequest: @unchecked Sendable {}
extension Org_Apache_Beam_Model_FnExecution_V1_GetProvisionInfoResponse: @unchecked Sendable {}
extension Org_Apache_Beam_Model_FnExecution_V1_ProvisionInfo: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "org.apache.beam.model.fn_execution.v1"

extension Org_Apache_Beam_Model_FnExecution_V1_GetProvisionInfoRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetProvisionInfoRequest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Org_Apache_Beam_Model_FnExecution_V1_GetProvisionInfoRequest, rhs: Org_Apache_Beam_Model_FnExecution_V1_GetProvisionInfoRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Org_Apache_Beam_Model_FnExecution_V1_GetProvisionInfoResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetProvisionInfoResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "info"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._info) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._info {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Org_Apache_Beam_Model_FnExecution_V1_GetProvisionInfoResponse, rhs: Org_Apache_Beam_Model_FnExecution_V1_GetProvisionInfoResponse) -> Bool {
    if lhs._info != rhs._info {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Org_Apache_Beam_Model_FnExecution_V1_ProvisionInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ProvisionInfo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    3: .standard(proto: "pipeline_options"),
    6: .standard(proto: "retrieval_token"),
    7: .standard(proto: "status_endpoint"),
    8: .standard(proto: "logging_endpoint"),
    9: .standard(proto: "artifact_endpoint"),
    10: .standard(proto: "control_endpoint"),
    11: .same(proto: "dependencies"),
    12: .standard(proto: "runner_capabilities"),
    13: .same(proto: "metadata"),
    14: .standard(proto: "sibling_worker_ids"),
  ]

  fileprivate class _StorageClass {
    var _pipelineOptions: SwiftProtobuf.Google_Protobuf_Struct? = nil
    var _retrievalToken: String = String()
    var _statusEndpoint: Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor? = nil
    var _loggingEndpoint: Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor? = nil
    var _artifactEndpoint: Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor? = nil
    var _controlEndpoint: Org_Apache_Beam_Model_Pipeline_V1_ApiServiceDescriptor? = nil
    var _dependencies: [Org_Apache_Beam_Model_Pipeline_V1_ArtifactInformation] = []
    var _runnerCapabilities: [String] = []
    var _metadata: Dictionary<String,String> = [:]
    var _siblingWorkerIds: [String] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _pipelineOptions = source._pipelineOptions
      _retrievalToken = source._retrievalToken
      _statusEndpoint = source._statusEndpoint
      _loggingEndpoint = source._loggingEndpoint
      _artifactEndpoint = source._artifactEndpoint
      _controlEndpoint = source._controlEndpoint
      _dependencies = source._dependencies
      _runnerCapabilities = source._runnerCapabilities
      _metadata = source._metadata
      _siblingWorkerIds = source._siblingWorkerIds
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._pipelineOptions) }()
        case 6: try { try decoder.decodeSingularStringField(value: &_storage._retrievalToken) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._statusEndpoint) }()
        case 8: try { try decoder.decodeSingularMessageField(value: &_storage._loggingEndpoint) }()
        case 9: try { try decoder.decodeSingularMessageField(value: &_storage._artifactEndpoint) }()
        case 10: try { try decoder.decodeSingularMessageField(value: &_storage._controlEndpoint) }()
        case 11: try { try decoder.decodeRepeatedMessageField(value: &_storage._dependencies) }()
        case 12: try { try decoder.decodeRepeatedStringField(value: &_storage._runnerCapabilities) }()
        case 13: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &_storage._metadata) }()
        case 14: try { try decoder.decodeRepeatedStringField(value: &_storage._siblingWorkerIds) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._pipelineOptions {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      } }()
      if !_storage._retrievalToken.isEmpty {
        try visitor.visitSingularStringField(value: _storage._retrievalToken, fieldNumber: 6)
      }
      try { if let v = _storage._statusEndpoint {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      } }()
      try { if let v = _storage._loggingEndpoint {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      } }()
      try { if let v = _storage._artifactEndpoint {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      } }()
      try { if let v = _storage._controlEndpoint {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      } }()
      if !_storage._dependencies.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._dependencies, fieldNumber: 11)
      }
      if !_storage._runnerCapabilities.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._runnerCapabilities, fieldNumber: 12)
      }
      if !_storage._metadata.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: _storage._metadata, fieldNumber: 13)
      }
      if !_storage._siblingWorkerIds.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._siblingWorkerIds, fieldNumber: 14)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Org_Apache_Beam_Model_FnExecution_V1_ProvisionInfo, rhs: Org_Apache_Beam_Model_FnExecution_V1_ProvisionInfo) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._pipelineOptions != rhs_storage._pipelineOptions {return false}
        if _storage._retrievalToken != rhs_storage._retrievalToken {return false}
        if _storage._statusEndpoint != rhs_storage._statusEndpoint {return false}
        if _storage._loggingEndpoint != rhs_storage._loggingEndpoint {return false}
        if _storage._artifactEndpoint != rhs_storage._artifactEndpoint {return false}
        if _storage._controlEndpoint != rhs_storage._controlEndpoint {return false}
        if _storage._dependencies != rhs_storage._dependencies {return false}
        if _storage._runnerCapabilities != rhs_storage._runnerCapabilities {return false}
        if _storage._metadata != rhs_storage._metadata {return false}
        if _storage._siblingWorkerIds != rhs_storage._siblingWorkerIds {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
