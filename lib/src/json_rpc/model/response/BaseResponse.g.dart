// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BaseResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return BaseResponse(
      jsonrpc: json['jsonrpc'] as String,
      id: json['id'] as int,
      result: json['result'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result
    };