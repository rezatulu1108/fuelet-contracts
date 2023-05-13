// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.74.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

abstract class FueletContracts {
  Future<TokenContract> newStaticMethodTokenContract(
      {required String nodeUrl, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewStaticMethodTokenContractConstMeta;

  Future<TokenInitializeConfigModel> configMethodTokenContract(
      {required TokenContract that, required String contractId, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConfigMethodTokenContractConstMeta;

  Future<SendCoinsPredicate> newStaticMethodSendCoinsPredicate(
      {required String nodeUrl, required String codeHex, dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kNewStaticMethodSendCoinsPredicateConstMeta;

  Future<String> addressMethodSendCoinsPredicate(
      {required SendCoinsPredicate that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kAddressMethodSendCoinsPredicateConstMeta;

  Future<void> transferToMethodSendCoinsPredicate(
      {required SendCoinsPredicate that,
      required String to,
      required String secret,
      required int amount,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kTransferToMethodSendCoinsPredicateConstMeta;
}

class SendCoinsPredicate {
  final FueletContracts bridge;
  final String nodeUrl;
  final Uint8List code;

  const SendCoinsPredicate({
    required this.bridge,
    required this.nodeUrl,
    required this.code,
  });

  static Future<SendCoinsPredicate> newSendCoinsPredicate(
          {required FueletContracts bridge,
          required String nodeUrl,
          required String codeHex,
          dynamic hint}) =>
      bridge.newStaticMethodSendCoinsPredicate(
          nodeUrl: nodeUrl, codeHex: codeHex, hint: hint);

  Future<String> address({dynamic hint}) =>
      bridge.addressMethodSendCoinsPredicate(
        that: this,
      );

  Future<void> transferTo(
          {required String to,
          required String secret,
          required int amount,
          dynamic hint}) =>
      bridge.transferToMethodSendCoinsPredicate(
        that: this,
        to: to,
        secret: secret,
        amount: amount,
      );
}

class TokenContract {
  final FueletContracts bridge;
  final String nodeUrl;

  const TokenContract({
    required this.bridge,
    required this.nodeUrl,
  });

  static Future<TokenContract> newTokenContract(
          {required FueletContracts bridge,
          required String nodeUrl,
          dynamic hint}) =>
      bridge.newStaticMethodTokenContract(nodeUrl: nodeUrl, hint: hint);

  Future<TokenInitializeConfigModel> config(
          {required String contractId, dynamic hint}) =>
      bridge.configMethodTokenContract(
        that: this,
        contractId: contractId,
      );
}

class TokenInitializeConfigModel {
  final String name;
  final String symbol;
  final int decimals;

  const TokenInitializeConfigModel({
    required this.name,
    required this.symbol,
    required this.decimals,
  });
}

class FueletContractsImpl implements FueletContracts {
  final FueletContractsPlatform _platform;
  factory FueletContractsImpl(ExternalLibrary dylib) =>
      FueletContractsImpl.raw(FueletContractsPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory FueletContractsImpl.wasm(FutureOr<WasmModule> module) =>
      FueletContractsImpl(module as ExternalLibrary);
  FueletContractsImpl.raw(this._platform);
  Future<TokenContract> newStaticMethodTokenContract(
      {required String nodeUrl, dynamic hint}) {
    var arg0 = _platform.api2wire_String(nodeUrl);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_new__static_method__TokenContract(port_, arg0),
      parseSuccessData: (d) => _wire2api_token_contract(d),
      constMeta: kNewStaticMethodTokenContractConstMeta,
      argValues: [nodeUrl],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kNewStaticMethodTokenContractConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "new__static_method__TokenContract",
        argNames: ["nodeUrl"],
      );

  Future<TokenInitializeConfigModel> configMethodTokenContract(
      {required TokenContract that, required String contractId, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_token_contract(that);
    var arg1 = _platform.api2wire_String(contractId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_config__method__TokenContract(port_, arg0, arg1),
      parseSuccessData: _wire2api_token_initialize_config_model,
      constMeta: kConfigMethodTokenContractConstMeta,
      argValues: [that, contractId],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConfigMethodTokenContractConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "config__method__TokenContract",
        argNames: ["that", "contractId"],
      );

  Future<SendCoinsPredicate> newStaticMethodSendCoinsPredicate(
      {required String nodeUrl, required String codeHex, dynamic hint}) {
    var arg0 = _platform.api2wire_String(nodeUrl);
    var arg1 = _platform.api2wire_String(codeHex);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_new__static_method__SendCoinsPredicate(port_, arg0, arg1),
      parseSuccessData: (d) => _wire2api_send_coins_predicate(d),
      constMeta: kNewStaticMethodSendCoinsPredicateConstMeta,
      argValues: [nodeUrl, codeHex],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kNewStaticMethodSendCoinsPredicateConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "new__static_method__SendCoinsPredicate",
            argNames: ["nodeUrl", "codeHex"],
          );

  Future<String> addressMethodSendCoinsPredicate(
      {required SendCoinsPredicate that, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_send_coins_predicate(that);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_address__method__SendCoinsPredicate(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kAddressMethodSendCoinsPredicateConstMeta,
      argValues: [that],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kAddressMethodSendCoinsPredicateConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "address__method__SendCoinsPredicate",
            argNames: ["that"],
          );

  Future<void> transferToMethodSendCoinsPredicate(
      {required SendCoinsPredicate that,
      required String to,
      required String secret,
      required int amount,
      dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_send_coins_predicate(that);
    var arg1 = _platform.api2wire_String(to);
    var arg2 = _platform.api2wire_String(secret);
    var arg3 = _platform.api2wire_u64(amount);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_transfer_to__method__SendCoinsPredicate(
              port_, arg0, arg1, arg2, arg3),
      parseSuccessData: _wire2api_unit,
      constMeta: kTransferToMethodSendCoinsPredicateConstMeta,
      argValues: [that, to, secret, amount],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kTransferToMethodSendCoinsPredicateConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "transfer_to__method__SendCoinsPredicate",
            argNames: ["that", "to", "secret", "amount"],
          );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  SendCoinsPredicate _wire2api_send_coins_predicate(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return SendCoinsPredicate(
      bridge: this,
      nodeUrl: _wire2api_String(arr[0]),
      code: _wire2api_uint_8_list(arr[1]),
    );
  }

  TokenContract _wire2api_token_contract(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return TokenContract(
      bridge: this,
      nodeUrl: _wire2api_String(arr[0]),
    );
  }

  TokenInitializeConfigModel _wire2api_token_initialize_config_model(
      dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 3)
      throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return TokenInitializeConfigModel(
      name: _wire2api_String(arr[0]),
      symbol: _wire2api_String(arr[1]),
      decimals: _wire2api_u8(arr[2]),
    );
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer

class FueletContractsPlatform
    extends FlutterRustBridgeBase<FueletContractsWire> {
  FueletContractsPlatform(ffi.DynamicLibrary dylib)
      : super(FueletContractsWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_SendCoinsPredicate>
      api2wire_box_autoadd_send_coins_predicate(SendCoinsPredicate raw) {
    final ptr = inner.new_box_autoadd_send_coins_predicate_0();
    _api_fill_to_wire_send_coins_predicate(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_TokenContract> api2wire_box_autoadd_token_contract(
      TokenContract raw) {
    final ptr = inner.new_box_autoadd_token_contract_0();
    _api_fill_to_wire_token_contract(raw, ptr.ref);
    return ptr;
  }

  @protected
  int api2wire_u64(int raw) {
    return raw;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_send_coins_predicate(
      SendCoinsPredicate apiObj, ffi.Pointer<wire_SendCoinsPredicate> wireObj) {
    _api_fill_to_wire_send_coins_predicate(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_token_contract(
      TokenContract apiObj, ffi.Pointer<wire_TokenContract> wireObj) {
    _api_fill_to_wire_token_contract(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_send_coins_predicate(
      SendCoinsPredicate apiObj, wire_SendCoinsPredicate wireObj) {
    wireObj.node_url = api2wire_String(apiObj.nodeUrl);
    wireObj.code = api2wire_uint_8_list(apiObj.code);
  }

  void _api_fill_to_wire_token_contract(
      TokenContract apiObj, wire_TokenContract wireObj) {
    wireObj.node_url = api2wire_String(apiObj.nodeUrl);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class FueletContractsWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FueletContractsWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FueletContractsWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_new__static_method__TokenContract(
    int port_,
    ffi.Pointer<wire_uint_8_list> node_url,
  ) {
    return _wire_new__static_method__TokenContract(
      port_,
      node_url,
    );
  }

  late final _wire_new__static_method__TokenContractPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_new__static_method__TokenContract');
  late final _wire_new__static_method__TokenContract =
      _wire_new__static_method__TokenContractPtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_config__method__TokenContract(
    int port_,
    ffi.Pointer<wire_TokenContract> that,
    ffi.Pointer<wire_uint_8_list> contract_id,
  ) {
    return _wire_config__method__TokenContract(
      port_,
      that,
      contract_id,
    );
  }

  late final _wire_config__method__TokenContractPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_TokenContract>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_config__method__TokenContract');
  late final _wire_config__method__TokenContract =
      _wire_config__method__TokenContractPtr.asFunction<
          void Function(int, ffi.Pointer<wire_TokenContract>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_new__static_method__SendCoinsPredicate(
    int port_,
    ffi.Pointer<wire_uint_8_list> node_url,
    ffi.Pointer<wire_uint_8_list> code_hex,
  ) {
    return _wire_new__static_method__SendCoinsPredicate(
      port_,
      node_url,
      code_hex,
    );
  }

  late final _wire_new__static_method__SendCoinsPredicatePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_new__static_method__SendCoinsPredicate');
  late final _wire_new__static_method__SendCoinsPredicate =
      _wire_new__static_method__SendCoinsPredicatePtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_address__method__SendCoinsPredicate(
    int port_,
    ffi.Pointer<wire_SendCoinsPredicate> that,
  ) {
    return _wire_address__method__SendCoinsPredicate(
      port_,
      that,
    );
  }

  late final _wire_address__method__SendCoinsPredicatePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64, ffi.Pointer<wire_SendCoinsPredicate>)>>(
      'wire_address__method__SendCoinsPredicate');
  late final _wire_address__method__SendCoinsPredicate =
      _wire_address__method__SendCoinsPredicatePtr.asFunction<
          void Function(int, ffi.Pointer<wire_SendCoinsPredicate>)>();

  void wire_transfer_to__method__SendCoinsPredicate(
    int port_,
    ffi.Pointer<wire_SendCoinsPredicate> that,
    ffi.Pointer<wire_uint_8_list> to,
    ffi.Pointer<wire_uint_8_list> secret,
    int amount,
  ) {
    return _wire_transfer_to__method__SendCoinsPredicate(
      port_,
      that,
      to,
      secret,
      amount,
    );
  }

  late final _wire_transfer_to__method__SendCoinsPredicatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_SendCoinsPredicate>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Uint64)>>('wire_transfer_to__method__SendCoinsPredicate');
  late final _wire_transfer_to__method__SendCoinsPredicate =
      _wire_transfer_to__method__SendCoinsPredicatePtr.asFunction<
          void Function(
              int,
              ffi.Pointer<wire_SendCoinsPredicate>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              int)>();

  ffi.Pointer<wire_SendCoinsPredicate>
      new_box_autoadd_send_coins_predicate_0() {
    return _new_box_autoadd_send_coins_predicate_0();
  }

  late final _new_box_autoadd_send_coins_predicate_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_SendCoinsPredicate> Function()>>(
      'new_box_autoadd_send_coins_predicate_0');
  late final _new_box_autoadd_send_coins_predicate_0 =
      _new_box_autoadd_send_coins_predicate_0Ptr
          .asFunction<ffi.Pointer<wire_SendCoinsPredicate> Function()>();

  ffi.Pointer<wire_TokenContract> new_box_autoadd_token_contract_0() {
    return _new_box_autoadd_token_contract_0();
  }

  late final _new_box_autoadd_token_contract_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_TokenContract> Function()>>(
          'new_box_autoadd_token_contract_0');
  late final _new_box_autoadd_token_contract_0 =
      _new_box_autoadd_token_contract_0Ptr
          .asFunction<ffi.Pointer<wire_TokenContract> Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_TokenContract extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> node_url;
}

class wire_SendCoinsPredicate extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> node_url;

  external ffi.Pointer<wire_uint_8_list> code;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
