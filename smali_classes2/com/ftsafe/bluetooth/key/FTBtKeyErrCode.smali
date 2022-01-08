.class public enum Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTKey_ALREADY_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTKey_ENABLE_BT_FAIL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTKey_RECV_BUF_SMALL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_BLE_NOT_SUPPORT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_BOND_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_BT_NOT_ENABLED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_BT_NOT_SUPPORT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_CONCURRENT_EXCEPTION:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_CONNECTION_BROKEN:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_CONNECT_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_CONNECT_TIMEOUT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_FIND_DEVICE_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_LOCATION_UNAUTHORIZE:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_MATCH_UUID_FAIL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_NOT_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_NOT_INIT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_OTHER_ERROR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_PARA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_RECV_DATA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_RECV_DATA_TIMEOUT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

.field public static final enum FT_BTkey_SEND_DATA_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/ftsafe/bluetooth/key/b;

    const/4 v1, 0x0

    const-string v2, "FT_BTKey_SUCCESS"

    invoke-direct {v0, v2, v1, v1}, Lcom/ftsafe/bluetooth/key/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/m;

    const/4 v2, 0x1

    const-string v3, "FT_BTkey_BT_NOT_ENABLED"

    const v4, -0x7effffff

    invoke-direct {v0, v3, v2, v4}, Lcom/ftsafe/bluetooth/key/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BT_NOT_ENABLED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/q;

    const/4 v3, 0x2

    const-string v4, "FT_BTkey_BT_NOT_SUPPORT"

    const v5, -0x7efffffe

    invoke-direct {v0, v4, v3, v5}, Lcom/ftsafe/bluetooth/key/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BT_NOT_SUPPORT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/r;

    const/4 v4, 0x3

    const-string v5, "FT_BTkey_CONNECT_FAILED"

    const v6, -0x7efffffd

    invoke-direct {v0, v5, v4, v6}, Lcom/ftsafe/bluetooth/key/r;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECT_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/s;

    const/4 v5, 0x4

    const-string v6, "FT_BTkey_BOND_FAILED"

    const v7, -0x7efffffc

    invoke-direct {v0, v6, v5, v7}, Lcom/ftsafe/bluetooth/key/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BOND_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/t;

    const/4 v6, 0x5

    const-string v7, "FT_BTkey_LOCATION_UNAUTHORIZE"

    const v8, -0x7efffffb

    invoke-direct {v0, v7, v6, v8}, Lcom/ftsafe/bluetooth/key/t;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_LOCATION_UNAUTHORIZE:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/u;

    const/4 v7, 0x6

    const-string v8, "FT_BTkey_OTHER_ERROR"

    const v9, -0x7efffffa

    invoke-direct {v0, v8, v7, v9}, Lcom/ftsafe/bluetooth/key/u;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_OTHER_ERROR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/v;

    const/4 v8, 0x7

    const-string v9, "FT_BTkey_BLE_NOT_SUPPORT"

    const v10, -0x7efffff9

    invoke-direct {v0, v9, v8, v10}, Lcom/ftsafe/bluetooth/key/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BLE_NOT_SUPPORT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/w;

    const/16 v9, 0x8

    const-string v10, "FT_BTkey_NOT_CONNECTED"

    const v11, -0x7efffff8

    invoke-direct {v0, v10, v9, v11}, Lcom/ftsafe/bluetooth/key/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/c;

    const/16 v10, 0x9

    const-string v11, "FT_BTkey_FIND_DEVICE_FAILED"

    const v12, -0x7efffff7

    invoke-direct {v0, v11, v10, v12}, Lcom/ftsafe/bluetooth/key/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_FIND_DEVICE_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/d;

    const/16 v11, 0xa

    const-string v12, "FT_BTkey_PARA_ERR"

    const v13, -0x7efffff0

    invoke-direct {v0, v12, v11, v13}, Lcom/ftsafe/bluetooth/key/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_PARA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/e;

    const/16 v12, 0xb

    const-string v13, "FT_BTkey_SEND_DATA_FAILED"

    const v14, -0x7effffef

    invoke-direct {v0, v13, v12, v14}, Lcom/ftsafe/bluetooth/key/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_SEND_DATA_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/f;

    const/16 v13, 0xc

    const-string v14, "FT_BTKey_RECV_BUF_SMALL"

    const v15, -0x7effffee

    invoke-direct {v0, v14, v13, v15}, Lcom/ftsafe/bluetooth/key/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_RECV_BUF_SMALL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/g;

    const/16 v14, 0xd

    const-string v15, "FT_BTKey_ALREADY_CONNECTED"

    const v13, -0x7effffed

    invoke-direct {v0, v15, v14, v13}, Lcom/ftsafe/bluetooth/key/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_ALREADY_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/h;

    const/16 v13, 0xe

    const-string v15, "FT_BTKey_ENABLE_BT_FAIL"

    const v14, -0x7effffec

    invoke-direct {v0, v15, v13, v14}, Lcom/ftsafe/bluetooth/key/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_ENABLE_BT_FAIL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/i;

    const/16 v14, 0xf

    const-string v15, "FT_BTkey_RECV_DATA_ERR"

    const v13, -0x7effffeb

    invoke-direct {v0, v15, v14, v13}, Lcom/ftsafe/bluetooth/key/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_RECV_DATA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/j;

    const/16 v13, 0x10

    const-string v15, "FT_BTkey_RECV_DATA_TIMEOUT"

    const v14, -0x7effffea

    invoke-direct {v0, v15, v13, v14}, Lcom/ftsafe/bluetooth/key/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_RECV_DATA_TIMEOUT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/k;

    const/16 v14, 0x11

    const-string v15, "FT_BTkey_CONCURRENT_EXCEPTION"

    const v13, -0x7effffe9

    invoke-direct {v0, v15, v14, v13}, Lcom/ftsafe/bluetooth/key/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONCURRENT_EXCEPTION:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/l;

    const/16 v13, 0x12

    const-string v15, "FT_BTkey_MATCH_UUID_FAIL"

    const v14, -0x7effffe8

    invoke-direct {v0, v15, v13, v14}, Lcom/ftsafe/bluetooth/key/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_MATCH_UUID_FAIL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/n;

    const/16 v14, 0x13

    const-string v15, "FT_BTkey_CONNECTION_BROKEN"

    const v13, -0x7effffe0

    invoke-direct {v0, v15, v14, v13}, Lcom/ftsafe/bluetooth/key/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECTION_BROKEN:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/o;

    const/16 v13, 0x14

    const-string v15, "FT_BTkey_CONNECT_TIMEOUT"

    const v14, -0x7effffdd

    invoke-direct {v0, v15, v13, v14}, Lcom/ftsafe/bluetooth/key/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECT_TIMEOUT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    new-instance v0, Lcom/ftsafe/bluetooth/key/p;

    const/16 v14, 0x15

    const-string v15, "FT_BTkey_NOT_INIT"

    const v13, -0x7effffdc

    invoke-direct {v0, v15, v14, v13}, Lcom/ftsafe/bluetooth/key/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_INIT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v13, 0x16

    new-array v13, v13, [Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    sget-object v15, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v15, v13, v1

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BT_NOT_ENABLED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v1, v13, v2

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BT_NOT_SUPPORT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v1, v13, v3

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECT_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v1, v13, v4

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BOND_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v1, v13, v5

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_LOCATION_UNAUTHORIZE:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v1, v13, v6

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_OTHER_ERROR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v1, v13, v7

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BLE_NOT_SUPPORT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v1, v13, v8

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v1, v13, v9

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_FIND_DEVICE_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v1, v13, v10

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_PARA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v1, v13, v11

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_SEND_DATA_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    aput-object v1, v13, v12

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_RECV_BUF_SMALL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_ALREADY_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_ENABLE_BT_FAIL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_RECV_DATA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_RECV_DATA_TIMEOUT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONCURRENT_EXCEPTION:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_MATCH_UUID_FAIL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECTION_BROKEN:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECT_TIMEOUT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    aput-object v0, v13, v14

    sput-object v13, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->$VALUES:[Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->value:I

    iput p3, p0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->value:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/ftsafe/bluetooth/key/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static mapErrorCode(I)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
    .locals 1

    if-eqz p0, :cond_2

    const v0, 0x60061007

    if-eq p0, v0, :cond_1

    const v0, 0x60061021

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_OTHER_ERROR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BT_NOT_ENABLED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BT_NOT_SUPPORT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_LOCATION_UNAUTHORIZE:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p0

    :cond_1
    sget-object p0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BOND_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x60061001
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
    .locals 1

    const-class v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p0
.end method

.method public static values()[Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
    .locals 1

    sget-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->$VALUES:[Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    invoke-virtual {v0}, [Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->value:I

    return v0
.end method
