%%%-------------------------------------------------------------------
%% @doc Client module for grpc service {{unmodified_service_name}}.
%% @end
%%%-------------------------------------------------------------------

%% this module was generated on {{datetime}} and should not be modified manually

-module({{module_name}}_client).

-compile(export_all).
-compile(nowarn_export_all).

-include_lib("grpc/include/grpc.hrl").

-define(SERVICE, '{{unmodified_service_name}}').
-define(PROTO_MODULE, '{{pb_module}}').
-define(MARSHAL_FUN(T), fun(I) -> ?PROTO_MODULE:encode_msg(I, T) end).
-define(UNMARSHAL_FUN(T), fun(I) -> ?PROTO_MODULE:decode_msg(I, T) end).
-define(DEF(Input, Output, MessageType),
        #{service =>?SERVICE,
          message_type => MessageType,
          marshal => ?MARSHAL_FUN(Input),
          unmarshal => ?UNMARSHAL_FUN(Output)}).

{{#methods}}
%% @doc {{^input_stream}}{{^output_stream}}Unary RPC{{/output_stream}}{{/input_stream}}
-spec {{method}}({{^input_stream}}{{pb_module}}:{{input}}(){{/input_stream}}) ->
    {{^output_stream}}{{^input_stream}}{ok, {{pb_module}}:{{output}}(), grpc:metadata()}{{/input_stream}}{{#input_stream}}{ok, grpc_client:stream()}{{/input_stream}}{{/output_stream}}{{#output_stream}}{{^input_stream}}{ok, grpc_client:stream()}{{/input_stream}}{{#input_stream}}{ok, grpc_client:stream()}{{/input_stream}}{{/output_stream}} | grpc_stream:grpc_error_response() | {error, any()}.
{{method}}({{^input_stream}}Input{{/input_stream}}) ->
    {{method}}({{^input_stream}}Input{{/input_stream}}, #{}).

-spec {{method}}({{^input_stream}}{{pb_module}}:{{input}}(){{/input_stream}}{{^input_stream}}, {{pb_module}}:{{input}}(){{/input_stream}}grpc_client:options()) ->
    {{^output_stream}}{{^input_stream}}{ok, {{pb_module}}:{{output}}(), grpc:metadata()}{{/input_stream}}{{#input_stream}}{ok, grpc_client:stream()}{{/input_stream}}{{/output_stream}}{{#output_stream}}{{^input_stream}}{ok, grpc_client:stream()}{{/input_stream}}{{#input_stream}}{ok, grpc_client:stream()}{{/input_stream}}{{/output_stream}} | grpc_stream:grpc_error_response() | {error, any()}.
{{method}}({{^input_stream}}Input, {{/input_stream}}Options) ->
    {{method}}({{^input_stream}}, Input{{/input_stream}}, Options).

-spec {{method}}({{^input_stream}}{{pb_module}}:{{input}}(){{/input_stream}}, grpc_client:options()) ->
    {{^output_stream}}{{^input_stream}}{ok, {{pb_module}}:{{output}}(), grpc:metadata()}{{/input_stream}}{{#input_stream}}{ok, grpc_client:stream()}{{/input_stream}}{{/output_stream}}{{#output_stream}}{{^input_stream}}{ok, grpc_client:stream()}{{/input_stream}}{{#input_stream}}{ok, grpc_client:stream()}{{/input_stream}}{{/output_stream}} | grpc_stream:grpc_error_response() | {error, any()}.
{{method}}({{^input_stream}}Input{{/input_stream}}, Options) ->
    {{^output_stream}}{{^input_stream}}grpc_client:unary(<<"/{{unmodified_service_name}}/{{unmodified_method}}">>, Input, ?DEF({{input}}, {{output}}, <<"{{message_type}}">>), Options){{/input_stream}}{{#input_stream}}grpc_client:stream(<<"/{{unmodified_service_name}}/{{unmodified_method}}">>, ?DEF({{input}}, {{output}}, <<"{{message_type}}">>), Options){{/input_stream}}{{/output_stream}}{{#output_stream}}{{^input_stream}}grpc_client:stream(<<"/{{unmodified_service_name}}/{{unmodified_method}}">>, Input, ?DEF({{input}}, {{output}}, <<"{{message_type}}">>), Options){{/input_stream}}{{#input_stream}}grpc_client:stream(<<"/{{unmodified_service_name}}/{{unmodified_method}}">>, ?DEF({{input}}, {{output}}, <<"{{message_type}}">>), Options){{/input_stream}}{{/output_stream}}.

{{/methods}}