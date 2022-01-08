.class public final enum Lim/imkey/imkeylibrary/bluetooth/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/imkey/imkeylibrary/bluetooth/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum ALREADY_CONNECTED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum BLE_NOT_SUPPORT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum BOND_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum BT_NOT_ENABLED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum BT_NOT_SUPPORT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum CONCURRENT_EXCEPTION:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum CONNECTION_BROKEN:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum CONNECT_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum CONNECT_TIMEOUT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum ENABLE_BT_FAIL:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum FIND_DEVICE_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum LOCATION_UNAUTHORIZE:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum MATCH_UUID_FAIL:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum NOT_CONNECTED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum OTHER_ERROR:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum PARA_ERR:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum RECV_BUF_SMALL:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum RECV_DATA_ERR:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum RECV_DATA_TIMEOUT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum SEND_DATA_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field public static final enum SUCCESS:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;


# instance fields
.field _desc:Ljava/lang/String;

.field _ftBtKeyErrCode:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 6
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/4 v2, 0x0

    const-string v3, "SUCCESS"

    const-string v4, "imkey_ble_success"

    invoke-direct {v0, v3, v2, v1, v4}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->SUCCESS:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 7
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_OTHER_ERROR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/4 v3, 0x1

    const-string v4, "OTHER_ERROR"

    const-string v5, "imkey_ble_other_error"

    invoke-direct {v0, v4, v3, v1, v5}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->OTHER_ERROR:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 8
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BT_NOT_SUPPORT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const-string v4, "imkey_ble_not_support"

    const/4 v5, 0x2

    const-string v6, "BT_NOT_SUPPORT"

    invoke-direct {v0, v6, v5, v1, v4}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->BT_NOT_SUPPORT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 9
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BLE_NOT_SUPPORT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/4 v6, 0x3

    const-string v7, "BLE_NOT_SUPPORT"

    invoke-direct {v0, v7, v6, v1, v4}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->BLE_NOT_SUPPORT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 10
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_LOCATION_UNAUTHORIZE:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/4 v4, 0x4

    const-string v7, "LOCATION_UNAUTHORIZE"

    const-string v8, "imkey_ble_location_unauthorize"

    invoke-direct {v0, v7, v4, v1, v8}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->LOCATION_UNAUTHORIZE:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 11
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BT_NOT_ENABLED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/4 v7, 0x5

    const-string v8, "BT_NOT_ENABLED"

    const-string v9, "imkey_ble_not_enabled"

    invoke-direct {v0, v8, v7, v1, v9}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->BT_NOT_ENABLED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 12
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_ENABLE_BT_FAIL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/4 v8, 0x6

    const-string v9, "ENABLE_BT_FAIL"

    const-string v10, "imkey_ble_enable_bt_fail"

    invoke-direct {v0, v9, v8, v1, v10}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->ENABLE_BT_FAIL:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 13
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_FIND_DEVICE_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/4 v9, 0x7

    const-string v10, "FIND_DEVICE_FAILED"

    const-string v11, "imkey_ble_find_device_failed"

    invoke-direct {v0, v10, v9, v1, v11}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->FIND_DEVICE_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 14
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BOND_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v10, 0x8

    const-string v11, "BOND_FAILED"

    const-string v12, "imkey_ble_bond_failed"

    invoke-direct {v0, v11, v10, v1, v12}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->BOND_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 15
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECT_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v11, 0x9

    const-string v12, "CONNECT_FAILED"

    const-string v13, "imkey_ble_connect_failed"

    invoke-direct {v0, v12, v11, v1, v13}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->CONNECT_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 16
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECT_TIMEOUT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v12, 0xa

    const-string v13, "CONNECT_TIMEOUT"

    const-string v14, "imkey_ble_connect_timeout"

    invoke-direct {v0, v13, v12, v1, v14}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->CONNECT_TIMEOUT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 17
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_ALREADY_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v13, 0xb

    const-string v14, "ALREADY_CONNECTED"

    const-string v15, "imkey_ble_already_connected"

    invoke-direct {v0, v14, v13, v1, v15}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->ALREADY_CONNECTED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 18
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECTION_BROKEN:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v14, 0xc

    const-string v15, "CONNECTION_BROKEN"

    const-string v13, "imkey_ble_connection_broken"

    invoke-direct {v0, v15, v14, v1, v13}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->CONNECTION_BROKEN:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 19
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v13, 0xd

    const-string v15, "NOT_CONNECTED"

    const-string v14, "imkey_ble_not_connected"

    invoke-direct {v0, v15, v13, v1, v14}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->NOT_CONNECTED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 20
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_PARA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v14, 0xe

    const-string v15, "PARA_ERR"

    const-string v13, "imkey_ble_illegal_argument"

    invoke-direct {v0, v15, v14, v1, v13}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->PARA_ERR:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 21
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_SEND_DATA_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v13, 0xf

    const-string v15, "SEND_DATA_FAILED"

    const-string v14, "imkey_ble_send_data_failed"

    invoke-direct {v0, v15, v13, v1, v14}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->SEND_DATA_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 22
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_RECV_BUF_SMALL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v14, 0x10

    const-string v15, "RECV_BUF_SMALL"

    const-string v13, "imkey_ble_recv_buf_small"

    invoke-direct {v0, v15, v14, v1, v13}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->RECV_BUF_SMALL:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 23
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_RECV_DATA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v13, 0x11

    const-string v15, "RECV_DATA_ERR"

    const-string v14, "imkey_ble_recv_data_err"

    invoke-direct {v0, v15, v13, v1, v14}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->RECV_DATA_ERR:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 24
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_RECV_DATA_TIMEOUT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v14, 0x12

    const-string v15, "RECV_DATA_TIMEOUT"

    const-string v13, "imkey_ble_recv_data_timeout"

    invoke-direct {v0, v15, v14, v1, v13}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->RECV_DATA_TIMEOUT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 25
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONCURRENT_EXCEPTION:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v13, 0x13

    const-string v15, "CONCURRENT_EXCEPTION"

    const-string v14, "imkey_ble_concurrent_exception"

    invoke-direct {v0, v15, v13, v1, v14}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->CONCURRENT_EXCEPTION:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 26
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_MATCH_UUID_FAIL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v14, 0x14

    const-string v15, "MATCH_UUID_FAIL"

    const-string v13, "imkey_ble_match_uuid_fail"

    invoke-direct {v0, v15, v14, v1, v13}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;-><init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->MATCH_UUID_FAIL:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    const/16 v1, 0x15

    new-array v1, v1, [Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 5
    sget-object v13, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->SUCCESS:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    aput-object v13, v1, v2

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->OTHER_ERROR:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    aput-object v2, v1, v3

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->BT_NOT_SUPPORT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    aput-object v2, v1, v5

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->BLE_NOT_SUPPORT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    aput-object v2, v1, v6

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->LOCATION_UNAUTHORIZE:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    aput-object v2, v1, v4

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->BT_NOT_ENABLED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    aput-object v2, v1, v7

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->ENABLE_BT_FAIL:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    aput-object v2, v1, v8

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->FIND_DEVICE_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    aput-object v2, v1, v9

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->BOND_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    aput-object v2, v1, v10

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->CONNECT_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    aput-object v2, v1, v11

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->CONNECT_TIMEOUT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    aput-object v2, v1, v12

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->ALREADY_CONNECTED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->CONNECTION_BROKEN:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->NOT_CONNECTED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->PARA_ERR:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->SEND_DATA_FAILED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->RECV_BUF_SMALL:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->RECV_DATA_ERR:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->RECV_DATA_TIMEOUT:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->CONCURRENT_EXCEPTION:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->$VALUES:[Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ftsafe/bluetooth/key/FTBtKeyErrCode;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->_ftBtKeyErrCode:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    .line 38
    iput-object p4, p0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->_desc:Ljava/lang/String;

    return-void
.end method

.method public static toErrorCode(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;
    .locals 5

    .line 42
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->values()[Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 43
    iget-object v4, v3, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->_ftBtKeyErrCode:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->OTHER_ERROR:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;
    .locals 1

    .line 5
    const-class v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    return-object p0
.end method

.method public static values()[Lim/imkey/imkeylibrary/bluetooth/ErrorCode;
    .locals 1

    .line 5
    sget-object v0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->$VALUES:[Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    invoke-virtual {v0}, [Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public get_desc()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->_desc:Ljava/lang/String;

    return-object v0
.end method
