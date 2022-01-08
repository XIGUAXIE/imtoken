.class public Lim/imkey/imkeylibrary/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final APDU_BLUETOOTH_CHANNEL_ERROR:Ljava/lang/String; = "6F01"

.field public static final APDU_CONDITIONS_NOT_SATISFIED:Ljava/lang/String; = "6985"

.field public static final APDU_GET_BATTERY_POWER:Ljava/lang/String; = "00D6FEED01"

.field public static final APDU_GET_BLE_NAME:Ljava/lang/String; = "FFDB465400"

.field public static final APDU_GET_BLE_VERSION:Ljava/lang/String; = "80CB800005DFFF02810000"

.field public static final APDU_GET_CERT:Ljava/lang/String; = "80CABF2106A6048302151800"

.field public static final APDU_GET_COS_VERSION:Ljava/lang/String; = "80CB800005DFFF02800300"

.field public static final APDU_GET_LIFE_TIME:Ljava/lang/String; = "FFDCFEED00"

.field public static final APDU_GET_RAM_SIZE:Ljava/lang/String; = "80CB800005DFFF02814600"

.field public static final APDU_GET_SEID:Ljava/lang/String; = "80CB800005DFFF028101"

.field public static final APDU_GET_SN:Ljava/lang/String; = "80CA004400"

.field public static final APDU_RESET:Ljava/lang/String; = "80CB800005DFFE02814700"

.field public static final APDU_RSP_APPLET_NOT_EXIST:Ljava/lang/String; = "6A82"

.field public static final APDU_RSP_APPLET_WRONG_DATA:Ljava/lang/String; = "6A80"

.field public static final APDU_RSP_CLA_NOT_SUPPORTED:Ljava/lang/String; = "6E00"

.field public static final APDU_RSP_EXCEEDED_MAX_UTXO_NUMBER:Ljava/lang/String; = "6941"

.field public static final APDU_RSP_FUNCTION_NOT_SUPPORTED:Ljava/lang/String; = "6D00"

.field public static final APDU_RSP_INCORRECT_P1P2:Ljava/lang/String; = "6A86"

.field public static final APDU_RSP_IN_MENU_PAGE:Ljava/lang/String; = "F080"

.field public static final APDU_RSP_PIN_NOT_VERIFIED:Ljava/lang/String; = "F081"

.field public static final APDU_RSP_SIGNATURE_VERIFY_FAILED:Ljava/lang/String; = "6942"

.field public static final APDU_RSP_SUCCESS:Ljava/lang/String; = "9000"

.field public static final APDU_RSP_USER_NOT_CONFIRMED:Ljava/lang/String; = "6940"

.field public static final APDU_RSP_WALLET_NOT_CREATED:Ljava/lang/String; = "F000"

.field public static final APDU_RSP_WRONG_LENGTH:Ljava/lang/String; = "6700"

.field public static final APDU_SELECT_ISD:Ljava/lang/String; = "00A4040000"

.field public static final AUTHCODE_ENC_PUB_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxmJ6bwSFsz3cHKfgYsZO\niEETO5JGpB9A0HZ7rkTqsu9FPQCP+we42f380hiCSH7MTakzyX5JQkKto84CxaBR\niapJQQ53GmboEA5Dyxr2zGELWe5OuyNv84xirXsdEd+9TgVNGeM0k5GjH16JynIS\nkrc4ApV0XYlozFwtIjrGdQuwrKJ3c2h+nNdgZeR/QvSuAFRZvOV0a9dgZGpb0Rm6\nNGmpNfSOuJjLq3LLOUw/7J5BY16ulUEHoXrHuMYyHY8XVa05FanSOY2yaKP2Qs7p\ny+n4Ls1a1k6+3d5mYB3CuJHi/t33La9if6j6FvfGQNtmG+Fdy0J02VdtmNvrIMJT\nCQIDAQAB"

.field public static final BATTERY_CHARGING_SIGN:Ljava/lang/String; = "FF"

.field public static final BIND_STATUS_BOUND_OTHER:Ljava/lang/String; = "AA"

.field public static final BIND_STATUS_BOUND_THIS:Ljava/lang/String; = "55"

.field public static final BIND_STATUS_UNBOUND:Ljava/lang/String; = "00"

.field public static final CURVE_N:Ljava/math/BigInteger;

.field public static final EACH_ROUND_NUMBER:I = 0x5

.field public static final HALF_CURVE_ORDER:Ljava/math/BigInteger;

.field public static final HOST_HTTPS:Ljava/lang/String; = "https://imkey.online:1000/imkey/"

.field public static final HTTP_TIMEOUT:I = 0x2710

.field public static final IMKEY_DEV_STATUS_INACTIVATED:Ljava/lang/String; = "inactivated"

.field public static final IMKEY_DEV_STATUS_LATEST:Ljava/lang/String; = "latest"

.field public static final IMKEY_DEV_STATUS_OUTDATED:Ljava/lang/String; = "outdated"

.field public static final LIFE_TIME_DEVICE_ACTIVATED:Ljava/lang/String; = "life_time_device_activated"

.field public static final LIFE_TIME_DEVICE_INITED:Ljava/lang/String; = "life_time_device_inited"

.field public static final LIFE_TIME_UNKNOWN:Ljava/lang/String; = "life_time_unknown"

.field public static final LIFE_TIME_UNSET_PIN:Ljava/lang/String; = "life_time_unset_pin"

.field public static final LIFE_TIME_WALLET_CREATTING:Ljava/lang/String; = "life_time_wallet_creatting"

.field public static final LIFE_TIME_WALLET_READY:Ljava/lang/String; = "life_time_wallet_ready"

.field public static final LIFE_TIME_WALLET_RECOVERING:Ljava/lang/String; = "life_time_wallet_recovering"

.field public static final LIFE_TIME_WALLET_UNREADY:Ljava/lang/String; = "life_time_wallet_unready"

.field public static final MAINNET:Ljava/lang/String; = "MAINNET"

.field public static final MAX_OPRETURN_SIZE:I = 0x50

.field public static final MAX_UTXO_NUMBER:I = 0xfc

.field private static final PRODUCT_HOST:Ljava/lang/String; = "https://imkey.online:1000/imkey/"

.field private static final PRODUCT_SSL_CERT:Ljava/lang/String; = "30820122300D06092A864886F70D01010105000382010F003082010A028201010088BFDFBE85067CD720583FA3F5659BBA629A2335A924F618001DF1B9B89DB769B1C75273493D51CDAD6588441E015226CAAB0D1319BFEAB9E257E6FE6C8227640DA2A5FCCC58963269C908EEEEEB0B7D14E312D15A104E81BC45D1112DCB978C3CA0D483FFB405D6CAC10909733B6B0A8D369B24611E4C284D05077901F36365B407DC3CB29C7B42664A8958063D93E87D405BEE692EDA4068A841D4EE12D7FC57494B24EE72537DAC29DCDCCD721D4AA8C1306D6613B8E04861844DB49DE10A140A7EB8C4D0351CAF5D76D44AADCC5C37E7504A24E31E92F6F3CBC133BF4EFFA889A14D6F1A684A9B471BC5B040F3C04D163158970EED5AE9A011F2A3DDB0810203010001"

.field public static final SEND_SIGN_PRE_APDU_TIMEOUT:I = 0x78

.field public static final SENT_APDU_TIMEOUT:I = 0x14

.field public static final SSL_CERT_PUBKEY:Ljava/lang/String; = "30820122300D06092A864886F70D01010105000382010F003082010A028201010088BFDFBE85067CD720583FA3F5659BBA629A2335A924F618001DF1B9B89DB769B1C75273493D51CDAD6588441E015226CAAB0D1319BFEAB9E257E6FE6C8227640DA2A5FCCC58963269C908EEEEEB0B7D14E312D15A104E81BC45D1112DCB978C3CA0D483FFB405D6CAC10909733B6B0A8D369B24611E4C284D05077901F36365B407DC3CB29C7B42664A8958063D93E87D405BEE692EDA4068A841D4EE12D7FC57494B24EE72537DAC29DCDCCD721D4AA8C1306D6613B8E04861844DB49DE10A140A7EB8C4D0351CAF5D76D44AADCC5C37E7504A24E31E92F6F3CBC133BF4EFFA889A14D6F1A684A9B471BC5B040F3C04D163158970EED5AE9A011F2A3DDB0810203010001"

.field public static final TESTNET:Ljava/lang/String; = "TESTNET"

.field private static final TEST_HOST:Ljava/lang/String; = "https://imkeyserver.com:10444/imkey/"

.field private static final TEST_SSL_CERT:Ljava/lang/String; = "30820122300D06092A864886F70D01010105000382010F003082010A0282010100880430F1269DC7388CF1E525A1FB400402D91880CEC25CCAA0F50142C6B45A9845483CCEF6416FE5807F76A128125AE26190C30C5C8BD105E5E25953B41234917CABAAD13DB9ECD94B4B52D76BC2B059BD7A304A6E72573BB46DE642F2F74E2FFA378E3D9FC9C02B8FF1A50823B1342EDE39193E98F00EC0B851BF1F1ADA83FF6BB6DCCC5080124FFC289BB2188ED33C05743C7F7485533C961E20F83357AC7E5C5E3A34557923BA9F5ECDF236714900455E9EA29E966D88F6802227A2CD9305A092D5A9EC4852FE6F07A75FF7A5E6C0ED6B16F6DB5C08ED036D4C07411360CA5DC58079ADB4AA5C2972F05A5C69EC6420267ACA44D89AF4ECFE490939C765770203010001"

.field public static final TSM_RETURNCODE_APP_DELETE_FAIL:Ljava/lang/String; = "BAPP0011"

.field public static final TSM_RETURNCODE_APP_DOWNLOAD_FAIL:Ljava/lang/String; = "BAPP0006"

.field public static final TSM_RETURNCODE_APP_UPDATE_FAIL:Ljava/lang/String; = "BAPP0008"

.field public static final TSM_RETURNCODE_DEVICE_ACTIVE_FAIL:Ljava/lang/String; = "BSE0015"

.field public static final TSM_RETURNCODE_DEVICE_CHECK_FAIL:Ljava/lang/String; = "BSE0009"

.field public static final TSM_RETURNCODE_DEVICE_ILLEGAL:Ljava/lang/String; = "BSE0017"

.field public static final TSM_RETURNCODE_DEVICE_STOP_USING:Ljava/lang/String; = "BSE0019"

.field public static final TSM_RETURNCODE_DEV_INACTIVATED:Ljava/lang/String; = "BSE0007"

.field public static final TSM_RETURNCODE_OCE_CERT_CHECK_FAIL:Ljava/lang/String; = "BSE0010"

.field public static final TSM_RETURNCODE_RECEIPT_CHECK_FAIL:Ljava/lang/String; = "BSE0012"

.field public static final TSM_RETURNCODE_SEID_ILLEGAL:Ljava/lang/String; = "BSE0008"

.field public static final TSM_RETURNCODE_SE_QUERY_FAIL:Ljava/lang/String; = "BSE0018"

.field public static final TSM_RETURNCODE_SUCCESS:Ljava/lang/String; = "000000"

.field public static bindcheckStatusMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static identityVerifyStatusMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final version:Ljava/lang/String; = "1.2.10"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 106
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    const-string v2, "7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0"

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/imkey/imkeylibrary/common/Constants;->HALF_CURVE_ORDER:Ljava/math/BigInteger;

    .line 107
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/imkey/imkeylibrary/common/Constants;->CURVE_N:Ljava/math/BigInteger;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lim/imkey/imkeylibrary/common/Constants;->bindcheckStatusMap:Ljava/util/Map;

    const-string v1, "00"

    const-string v2, "unbound"

    .line 142
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lim/imkey/imkeylibrary/common/Constants;->bindcheckStatusMap:Ljava/util/Map;

    const-string v1, "55"

    const-string v2, "bound_this"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lim/imkey/imkeylibrary/common/Constants;->bindcheckStatusMap:Ljava/util/Map;

    const-string v1, "AA"

    const-string v2, "bound_other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lim/imkey/imkeylibrary/common/Constants;->identityVerifyStatusMap:Ljava/util/Map;

    const-string v1, "5A"

    const-string v2, "success"

    .line 150
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lim/imkey/imkeylibrary/common/Constants;->identityVerifyStatusMap:Ljava/util/Map;

    const-string v1, "A5"

    const-string v2, "authcode_error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
