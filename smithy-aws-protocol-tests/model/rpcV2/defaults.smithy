$version: "2.0"

namespace aws.protocoltests.rpcv2Cbor

use smithy.protocols#rpcv2Cbor
use smithy.test#httpRequestTests
use smithy.test#httpResponseTests
use smithy.framework#ValidationException

apply OperationWithDefaults @httpRequestTests([
    {
        id: "RpcV2CborClientPopulatesDefaultValuesInInput"
        documentation: "Client populates default values in input."
        protocol: rpcv2Cbor
        appliesTo: "client"
        tags: ["defaults"]
        method: "POST"
        uri: "/"
        headers: {
            "smithy-protocol": "rpc-v2-cbor",
            "Accept": "application/cbor",
            "Content-Type": "application/cbor"
        },
        bodyMediaType: "application/cbor"
        // http://ec2-54-84-9-83.compute-1.amazonaws.com/hex?value=v21kZWZhdWx0U3RyaW5nYmhpbmRlZmF1bHRCb29sZWFu9WtkZWZhdWx0TGlzdIBwZGVmYXVsdFRpbWVzdGFtcMH7AAAAAAAAAABrZGVmYXVsdEJsb2JDYWJja2RlZmF1bHRCeXRlAWxkZWZhdWx0U2hvcnQBbmRlZmF1bHRJbnRlZ2VyCmtkZWZhdWx0TG9uZxhkbGRlZmF1bHRGbG9hdPo%2FgAAAbWRlZmF1bHREb3VibGX7P%2FAAAAAAAABqZGVmYXVsdE1hcKBrZGVmYXVsdEVudW1jRk9PbmRlZmF1bHRJbnRFbnVtAWtlbXB0eVN0cmluZ2BsZmFsc2VCb29sZWFu9GllbXB0eUJsb2JAaHplcm9CeXRlAGl6ZXJvU2hvcnQAa3plcm9JbnRlZ2VyAGh6ZXJvTG9uZwBpemVyb0Zsb2F0%2BgAAAABqemVyb0RvdWJsZfsAAAAAAAAAAP8%3D
        body: "v21kZWZhdWx0U3RyaW5nYmhpbmRlZmF1bHRCb29sZWFu9WtkZWZhdWx0TGlzdIBwZGVmYXVsdFRpbWVzdGFtcMH7AAAAAAAAAABrZGVmYXVsdEJsb2JDYWJja2RlZmF1bHRCeXRlAWxkZWZhdWx0U2hvcnQBbmRlZmF1bHRJbnRlZ2VyCmtkZWZhdWx0TG9uZxhkbGRlZmF1bHRGbG9hdPo/gAAAbWRlZmF1bHREb3VibGX7P/AAAAAAAABqZGVmYXVsdE1hcKBrZGVmYXVsdEVudW1jRk9PbmRlZmF1bHRJbnRFbnVtAWtlbXB0eVN0cmluZ2BsZmFsc2VCb29sZWFu9GllbXB0eUJsb2JAaHplcm9CeXRlAGl6ZXJvU2hvcnQAa3plcm9JbnRlZ2VyAGh6ZXJvTG9uZwBpemVyb0Zsb2F0+gAAAABqemVyb0RvdWJsZfsAAAAAAAAAAP8="
        params: {
            defaults: {}
        }
    }
    {
        id: "RpcV2CborClientSkipsTopLevelDefaultValuesInInput"
        documentation: "Client skips top level default values in input."
        appliesTo: "client"
        tags: ["defaults"]
        protocol: rpcv2Cbor
        method: "POST"
        bodyMediaType: "application/cbor"
        uri: "/"
        headers: {
            "smithy-protocol": "rpc-v2-cbor",
            "Accept": "application/cbor",
            "Content-Type": "application/cbor"
        },
        // http://ec2-54-84-9-83.compute-1.amazonaws.com/hex?value=v%2F8%3D
        body: "v/8="
        params: {
        }
    }
    {
        id: "RpcV2CborClientUsesExplicitlyProvidedMemberValuesOverDefaults"
        documentation: "Client uses explicitly provided member values over defaults"
        appliesTo: "client"
        tags: ["defaults"]
        protocol: rpcv2Cbor
        method: "POST"
        bodyMediaType: "application/cbor"
        uri: "/"
        headers: {
            "smithy-protocol": "rpc-v2-cbor",
            "Accept": "application/cbor",
            "Content-Type": "application/cbor"
        },
        // http://ec2-54-84-9-83.compute-1.amazonaws.com/hex?value=v2hkZWZhdWx0c7dtZGVmYXVsdFN0cmluZ2NieWVuZGVmYXVsdEJvb2xlYW71a2RlZmF1bHRMaXN0gWFhcGRlZmF1bHRUaW1lc3RhbXDB%2Bz%2FwAAAAAAAAa2RlZmF1bHRCbG9iQmhpa2RlZmF1bHRCeXRlAmxkZWZhdWx0U2hvcnQCbmRlZmF1bHRJbnRlZ2VyFGtkZWZhdWx0TG9uZxjIbGRlZmF1bHRGbG9hdPpAAAAAbWRlZmF1bHREb3VibGX7QAAAAAAAAABqZGVmYXVsdE1hcKFkbmFtZWRKYWNra2RlZmF1bHRFbnVtY0JBUm5kZWZhdWx0SW50RW51bQJrZW1wdHlTdHJpbmdjZm9vbGZhbHNlQm9vbGVhbvVpZW1wdHlCbG9iQmhpaHplcm9CeXRlAWl6ZXJvU2hvcnQBa3plcm9JbnRlZ2VyAWh6ZXJvTG9uZwFpemVyb0Zsb2F0%2Bj%2BAAABqemVyb0RvdWJsZfs%2F8AAAAAAAAP8%3D
        body: "v2hkZWZhdWx0c7dtZGVmYXVsdFN0cmluZ2NieWVuZGVmYXVsdEJvb2xlYW71a2RlZmF1bHRMaXN0gWFhcGRlZmF1bHRUaW1lc3RhbXDB+z/wAAAAAAAAa2RlZmF1bHRCbG9iQmhpa2RlZmF1bHRCeXRlAmxkZWZhdWx0U2hvcnQCbmRlZmF1bHRJbnRlZ2VyFGtkZWZhdWx0TG9uZxjIbGRlZmF1bHRGbG9hdPpAAAAAbWRlZmF1bHREb3VibGX7QAAAAAAAAABqZGVmYXVsdE1hcKFkbmFtZWRKYWNra2RlZmF1bHRFbnVtY0JBUm5kZWZhdWx0SW50RW51bQJrZW1wdHlTdHJpbmdjZm9vbGZhbHNlQm9vbGVhbvVpZW1wdHlCbG9iQmhpaHplcm9CeXRlAWl6ZXJvU2hvcnQBa3plcm9JbnRlZ2VyAWh6ZXJvTG9uZwFpemVyb0Zsb2F0+j+AAABqemVyb0RvdWJsZfs/8AAAAAAAAP8="
        params: {
            defaults: {
                defaultString: "bye",
                defaultBoolean: true,
                defaultList: ["a"],
                defaultTimestamp: 1,
                defaultBlob: "hi",
                defaultByte: 2,
                defaultShort: 2,
                defaultInteger: 20,
                defaultLong: 200,
                defaultFloat: 2.0,
                defaultDouble: 2.0,
                defaultMap: {name: "Jack"},
                defaultEnum: "BAR",
                defaultIntEnum: 2,
                emptyString: "foo",
                falseBoolean: true,
                emptyBlob: "hi",
                zeroByte: 1,
                zeroShort: 1,
                zeroInteger: 1,
                zeroLong: 1,
                zeroFloat: 1.0,
                zeroDouble: 1.0
            }
        }
    }
    {
        id: "RpcV2CborServerPopulatesDefaultsWhenMissingInRequestBody"
        documentation: "Server populates default values when missing in request body."
        appliesTo: "server"
        tags: ["defaults"]
        protocol: rpcv2Cbor
        method: "POST"
        bodyMediaType: "application/cbor"
        uri: "/"
        headers: {
            "smithy-protocol": "rpc-v2-cbor",
            "Accept": "application/cbor",
            "Content-Type": "application/cbor"
        },
        // http://ec2-54-84-9-83.compute-1.amazonaws.com/hex?value=v2hkZWZhdWx0c6D%2F
        body: "v2hkZWZhdWx0c6D/"
        params: {
            defaults: {
                defaultString: "hi",
                defaultBoolean: true,
                defaultList: [],
                defaultTimestamp: 0,
                defaultBlob: "abc",
                defaultByte: 1,
                defaultShort: 1,
                defaultInteger: 10,
                defaultLong: 100,
                defaultFloat: 1.0,
                defaultDouble: 1.0,
                defaultMap: {},
                defaultEnum: "FOO",
                defaultIntEnum: 1,
                emptyString: "",
                falseBoolean: false,
                emptyBlob: "",
                zeroByte: 0,
                zeroShort: 0,
                zeroInteger: 0,
                zeroLong: 0,
                zeroFloat: 0.0,
                zeroDouble: 0.0
            },
            topLevelDefault: "hi",
            otherTopLevelDefault: 0
        }
    }
    {
        id: "RpcV2CborClientUsesExplicitlyProvidedValuesInTopLevel"
        documentation: "Any time a value is provided for a member in the top level of input, it is used, regardless of if its the default."
        appliesTo: "client"
        tags: ["defaults"]
        protocol: rpcv2Cbor
        method: "POST"
        bodyMediaType: "application/cbor"
        uri: "/"
        headers: {
            "smithy-protocol": "rpc-v2-cbor",
            "Accept": "application/cbor",
            "Content-Type": "application/cbor"
        },
        // http://ec2-54-84-9-83.compute-1.amazonaws.com/hex?value=v290b3BMZXZlbERlZmF1bHRiaGl0b3RoZXJUb3BMZXZlbERlZmF1bHQA%2Fw%3D%3D
        body: "v290b3BMZXZlbERlZmF1bHRiaGl0b3RoZXJUb3BMZXZlbERlZmF1bHQA/w=="
        params: {
            topLevelDefault: "hi",
            otherTopLevelDefault: 0
        }
    }
    {
        id: "RpcV2CborClientIgnoresNonTopLevelDefaultsOnMembersWithClientOptional"
        documentation: "Typically, non top-level members would have defaults filled in, but if they have the clientOptional trait, the defaults should be ignored."
        appliesTo: "client"
        tags: ["defaults"]
        protocol: rpcv2Cbor
        method: "POST"
        bodyMediaType: "application/cbor"
        uri: "/"
        headers: {
            "smithy-protocol": "rpc-v2-cbor",
            "Accept": "application/cbor",
            "Content-Type": "application/cbor"
        },
        // http://ec2-54-84-9-83.compute-1.amazonaws.com/hex?value=v3ZjbGllbnRPcHRpb25hbERlZmF1bHRzoP8%3D
        body: "v3ZjbGllbnRPcHRpb25hbERlZmF1bHRzoP8="
        params: {
            clientOptionalDefaults: {}
        }
    }
])

apply OperationWithDefaults @httpResponseTests([
    {
        id: "RpcV2CborClientPopulatesDefaultsValuesWhenMissingInResponse"
        documentation: "Client populates default values when missing in response."
        appliesTo: "client"
        tags: ["defaults"]
        protocol: rpcv2Cbor
        code: 200
        bodyMediaType: "application/cbor"
        headers: {
            "smithy-protocol": "rpc-v2-cbor",
            "Content-Type": "application/cbor"
        },
        body: "v/8="
        params: {
            defaultString: "hi"
            defaultBoolean: true
            defaultList: []
            defaultTimestamp: 0
            defaultBlob: "abc"
            defaultByte: 1
            defaultShort: 1
            defaultInteger: 10
            defaultLong: 100
            defaultFloat: 1.0
            defaultDouble: 1.0
            defaultMap: {}
            defaultEnum: "FOO"
            defaultIntEnum: 1
            emptyString: ""
            falseBoolean: false
            emptyBlob: ""
            zeroByte: 0
            zeroShort: 0
            zeroInteger: 0
            zeroLong: 0
            zeroFloat: 0.0
            zeroDouble: 0.0
        }
    }
    {
        id: "RpcV2CborClientIgnoresDefaultValuesIfMemberValuesArePresentInResponse"
        documentation: "Client ignores default values if member values are present in the response."
        appliesTo: "client"
        tags: ["defaults"]
        protocol: rpcv2Cbor
        code: 200
        bodyMediaType: "application/cbor"
        headers: {
            "smithy-protocol": "rpc-v2-cbor",
            "Content-Type": "application/cbor"
        },
        // http://ec2-54-84-9-83.compute-1.amazonaws.com/hex?value=v21kZWZhdWx0U3RyaW5nY2J5ZW5kZWZhdWx0Qm9vbGVhbvRrZGVmYXVsdExpc3SBYWFwZGVmYXVsdFRpbWVzdGFtcMH7QAAAAAAAAABrZGVmYXVsdEJsb2JCaGlrZGVmYXVsdEJ5dGUCbGRlZmF1bHRTaG9ydAJuZGVmYXVsdEludGVnZXIUa2RlZmF1bHRMb25nGMhsZGVmYXVsdEZsb2F0%2BkAAAABtZGVmYXVsdERvdWJsZftAAAAAAAAAAGpkZWZhdWx0TWFwoWRuYW1lZEphY2trZGVmYXVsdEVudW1jQkFSbmRlZmF1bHRJbnRFbnVtAmtlbXB0eVN0cmluZ2Nmb29sZmFsc2VCb29sZWFu9WllbXB0eUJsb2JCaGloemVyb0J5dGUBaXplcm9TaG9ydAFremVyb0ludGVnZXIBaHplcm9Mb25nAWl6ZXJvRmxvYXT6P4AAAGp6ZXJvRG91Ymxl%2Bz%2FwAAAAAAAA%2Fw%3D%3D
        body: "v21kZWZhdWx0U3RyaW5nY2J5ZW5kZWZhdWx0Qm9vbGVhbvRrZGVmYXVsdExpc3SBYWFwZGVmYXVsdFRpbWVzdGFtcMH7QAAAAAAAAABrZGVmYXVsdEJsb2JCaGlrZGVmYXVsdEJ5dGUCbGRlZmF1bHRTaG9ydAJuZGVmYXVsdEludGVnZXIUa2RlZmF1bHRMb25nGMhsZGVmYXVsdEZsb2F0+kAAAABtZGVmYXVsdERvdWJsZftAAAAAAAAAAGpkZWZhdWx0TWFwoWRuYW1lZEphY2trZGVmYXVsdEVudW1jQkFSbmRlZmF1bHRJbnRFbnVtAmtlbXB0eVN0cmluZ2Nmb29sZmFsc2VCb29sZWFu9WllbXB0eUJsb2JCaGloemVyb0J5dGUBaXplcm9TaG9ydAFremVyb0ludGVnZXIBaHplcm9Mb25nAWl6ZXJvRmxvYXT6P4AAAGp6ZXJvRG91Ymxl+z/wAAAAAAAA/w=="
        params: {
            defaultString: "bye",
            defaultBoolean: false,
            defaultList: ["a"],
            defaultTimestamp: 2,
            defaultBlob: "hi",
            defaultByte: 2,
            defaultShort: 2,
            defaultInteger: 20,
            defaultLong: 200,
            defaultFloat: 2.0,
            defaultDouble: 2.0,
            defaultMap: {name: "Jack"},
            defaultEnum: "BAR",
            defaultIntEnum: 2,
            emptyString: "foo",
            falseBoolean: true,
            emptyBlob: "hi",
            zeroByte: 1,
            zeroShort: 1,
            zeroInteger: 1,
            zeroLong: 1,
            zeroFloat: 1.0,
            zeroDouble: 1.0
        }
    }
    {
        id: "RpcV2CborServerPopulatesDefaultsInResponseWhenMissingInParams"
        documentation: "Server populates default values in response when missing in params."
        appliesTo: "server"
        tags: ["defaults"]
        protocol: rpcv2Cbor
        code: 200
        bodyMediaType: "application/cbor"
        headers: {
            "smithy-protocol": "rpc-v2-cbor",
            "Content-Type": "application/cbor"
        },
        // http://ec2-54-84-9-83.compute-1.amazonaws.com/hex?value=v21kZWZhdWx0U3RyaW5nYmhpbmRlZmF1bHRCb29sZWFu9WtkZWZhdWx0TGlzdIBwZGVmYXVsdFRpbWVzdGFtcMH7AAAAAAAAAABrZGVmYXVsdEJsb2JDYWJja2RlZmF1bHRCeXRlAWxkZWZhdWx0U2hvcnQBbmRlZmF1bHRJbnRlZ2VyCmtkZWZhdWx0TG9uZxhkbGRlZmF1bHRGbG9hdPo%2FgAAAbWRlZmF1bHREb3VibGX7P%2FAAAAAAAABqZGVmYXVsdE1hcKBrZGVmYXVsdEVudW1jRk9PbmRlZmF1bHRJbnRFbnVtAWtlbXB0eVN0cmluZ2BsZmFsc2VCb29sZWFu9GllbXB0eUJsb2JAaHplcm9CeXRlAGl6ZXJvU2hvcnQAa3plcm9JbnRlZ2VyAGh6ZXJvTG9uZwBpemVyb0Zsb2F0%2BgAAAABqemVyb0RvdWJsZfsAAAAAAAAAAP8%3D
        body: "v21kZWZhdWx0U3RyaW5nYmhpbmRlZmF1bHRCb29sZWFu9WtkZWZhdWx0TGlzdIBwZGVmYXVsdFRpbWVzdGFtcMH7AAAAAAAAAABrZGVmYXVsdEJsb2JDYWJja2RlZmF1bHRCeXRlAWxkZWZhdWx0U2hvcnQBbmRlZmF1bHRJbnRlZ2VyCmtkZWZhdWx0TG9uZxhkbGRlZmF1bHRGbG9hdPo/gAAAbWRlZmF1bHREb3VibGX7P/AAAAAAAABqZGVmYXVsdE1hcKBrZGVmYXVsdEVudW1jRk9PbmRlZmF1bHRJbnRFbnVtAWtlbXB0eVN0cmluZ2BsZmFsc2VCb29sZWFu9GllbXB0eUJsb2JAaHplcm9CeXRlAGl6ZXJvU2hvcnQAa3plcm9JbnRlZ2VyAGh6ZXJvTG9uZwBpemVyb0Zsb2F0+gAAAABqemVyb0RvdWJsZfsAAAAAAAAAAP8="
        params: {}
    }
])

operation OperationWithDefaults {
    input := {
        defaults: Defaults
        clientOptionalDefaults: ClientOptionalDefaults
        topLevelDefault: String = "hi" // Client should ignore default values in input shape
        otherTopLevelDefault: Integer = 0
    }

    output := with [DefaultsMixin] {}

    errors: [ValidationException]
}

structure Defaults with [DefaultsMixin] {}

structure ClientOptionalDefaults {
    @clientOptional
    member: Integer = 0
}

@mixin
structure DefaultsMixin {
    defaultString: String = "hi"
    defaultBoolean: Boolean = true
    defaultList: TestStringList = []
    defaultTimestamp: Timestamp = 0
    defaultBlob: Blob = "abc"
    defaultByte: Byte = 1
    defaultShort: Short = 1
    defaultInteger: Integer = 10
    defaultLong: Long = 100
    defaultFloat: Float = 1.0
    defaultDouble: Double = 1.0
    defaultMap: TestStringMap = {}
    defaultEnum: TestEnum = "FOO"
    defaultIntEnum: TestIntEnum = 1
    emptyString: String = ""
    falseBoolean: Boolean = false
    emptyBlob: Blob = ""
    zeroByte: Byte = 0
    zeroShort: Short = 0
    zeroInteger: Integer = 0
    zeroLong: Long = 0
    zeroFloat: Float = 0.0
    zeroDouble: Double = 0.0
}

list TestStringList {
    member: String
}

map TestStringMap {
    key: String
    value: String
}

enum TestEnum {
    FOO
    BAR
    BAZ
}

intEnum TestIntEnum {
    ONE = 1
    TWO = 2
}
