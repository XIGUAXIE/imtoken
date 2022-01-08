.class public Lim/imkey/imkeylibrary/bluetooth/Ble;
.super Ljava/lang/Object;
.source "Ble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/imkey/imkeylibrary/bluetooth/Ble$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Ble"


# instance fields
.field private connectedDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

.field private initialized:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

.field private mMapDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mResponse:Ljava/lang/String;

.field private sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->initialized:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$100(Lim/imkey/imkeylibrary/bluetooth/Ble;)Ljava/util/HashMap;
    .locals 0

    .line 27
    iget-object p0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mMapDevices:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lim/imkey/imkeylibrary/bluetooth/Ble;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->toDevice(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lim/imkey/imkeylibrary/bluetooth/Ble;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;
    .locals 0

    .line 27
    iget-object p0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->connectedDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    return-object p0
.end method

.method static synthetic access$302(Lim/imkey/imkeylibrary/bluetooth/Ble;Lim/imkey/imkeylibrary/bluetooth/BleDevice;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;
    .locals 0

    .line 27
    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->connectedDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    return-object p1
.end method

.method static synthetic access$400(Lim/imkey/imkeylibrary/bluetooth/Ble;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->keepConnect()V

    return-void
.end method

.method static synthetic access$502(Lim/imkey/imkeylibrary/bluetooth/Ble;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lim/imkey/imkeylibrary/bluetooth/Ble;Lim/imkey/imkeylibrary/bluetooth/ErrorCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;
    .locals 0

    .line 27
    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mErrorCode:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    return-object p1
.end method

.method public static getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;
    .locals 1

    .line 36
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble$Holder;->access$000()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    return-object v0
.end method

.method private keepConnect()V
    .locals 1

    const-string v0, "00D6FEED01"

    .line 278
    invoke-virtual {p0, v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    return-void
.end method

.method private toDevice(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 150
    :cond_0
    new-instance v7, Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->getDevType()I

    move-result v2

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->getRadioDevName()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->getRadioUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->getDevRssi()I

    move-result v5

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->getRadioManufacturerData()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public connect(Lim/imkey/imkeylibrary/bluetooth/BleDevice;ILim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;)V
    .locals 8

    .line 101
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->initialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "imkey_sdk_illegal_argument"

    if-eqz p1, :cond_3

    if-lez p2, :cond_2

    if-eqz p3, :cond_1

    .line 114
    new-instance v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getDevType()I

    move-result v3

    .line 115
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getRadioDevName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getRadioUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getDevRssi()I

    move-result v6

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getRadioManufacturerData()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    new-instance v1, Lim/imkey/imkeylibrary/bluetooth/Ble$2;

    invoke-direct {v1, p0, p3}, Lim/imkey/imkeylibrary/bluetooth/Ble$2;-><init>(Lim/imkey/imkeylibrary/bluetooth/Ble;Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_Connect(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;ILcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p1

    .line 142
    sget-object p2, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    if-eq p1, p2, :cond_0

    .line 143
    invoke-static {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->toErrorCode(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    move-result-object p1

    invoke-interface {p3, p1}, Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;->onConnectFail(Lim/imkey/imkeylibrary/bluetooth/ErrorCode;)V

    :cond_0
    return-void

    .line 112
    :cond_1
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_2
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_3
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_4
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_sdk_ble_not_initialize"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connectDirectly(Ljava/lang/String;ILim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->initialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "imkey_sdk_illegal_argument"

    if-eqz p1, :cond_3

    if-lez p2, :cond_2

    if-eqz p3, :cond_1

    .line 247
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    const/4 v1, 0x4

    new-instance v2, Lim/imkey/imkeylibrary/bluetooth/Ble$4;

    invoke-direct {v2, p0, p3}, Lim/imkey/imkeylibrary/bluetooth/Ble$4;-><init>(Lim/imkey/imkeylibrary/bluetooth/Ble;Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_ConnectDirectly(ILjava/lang/String;ILcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p1

    .line 273
    sget-object p2, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    if-eq p1, p2, :cond_0

    .line 274
    invoke-static {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->toErrorCode(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    move-result-object p1

    invoke-interface {p3, p1}, Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;->onConnectFail(Lim/imkey/imkeylibrary/bluetooth/ErrorCode;)V

    :cond_0
    return-void

    .line 245
    :cond_1
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_2
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 241
    :cond_3
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_4
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_sdk_ble_not_initialize"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disconnect(Lim/imkey/imkeylibrary/bluetooth/BleDevice;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 158
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->initialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getDevType()I

    move-result v3

    .line 163
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getRadioDevName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getRadioUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getDevRssi()I

    move-result v6

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getRadioManufacturerData()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-virtual {p1, v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_Disconnect(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p1

    .line 166
    sget-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->connectedDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    return-void

    .line 167
    :cond_0
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-static {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->toErrorCode(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->get_desc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_sdk_ble_not_initialize"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_2
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_sdk_illegal_argument"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finalize()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->initialized:Ljava/lang/Boolean;

    .line 59
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-virtual {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_Finalize()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 283
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 1

    .line 44
    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->getInstance(Landroid/content/Context;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    move-result-object p1

    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ftversion\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-virtual {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_GetLibVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_Initialize()Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-virtual {v0, p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_SetLibLanguage(Ljava/util/Locale;)V

    .line 51
    sget-object p2, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 54
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->initialized:Ljava/lang/Boolean;

    return-void

    .line 52
    :cond_0
    new-instance p2, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-static {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->toErrorCode(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->get_desc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public sendApdu(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x14

    .line 232
    invoke-virtual {p0, p1, v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendApdu(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 178
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->connectedDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    if-eqz v0, :cond_5

    const-string v0, "imkey_sdk_illegal_argument"

    if-eqz p1, :cond_4

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    if-lez p2, :cond_3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ble  >>>>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, ""

    .line 193
    iput-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mResponse:Ljava/lang/String;

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mErrorCode:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 195
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 196
    new-instance v1, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    iget-object v2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->connectedDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    invoke-virtual {v2}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->connectedDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    invoke-virtual {v2}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getDevType()I

    move-result v4

    iget-object v2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->connectedDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    .line 197
    invoke-virtual {v2}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getRadioDevName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->connectedDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    invoke-virtual {v2}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getRadioUUID()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->connectedDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    invoke-virtual {v2}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getDevRssi()I

    move-result v7

    iget-object v2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->connectedDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    invoke-virtual {v2}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getRadioManufacturerData()Ljava/lang/String;

    move-result-object v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 200
    iget-object v2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    array-length v5, v4

    new-instance v7, Lim/imkey/imkeylibrary/bluetooth/Ble$3;

    invoke-direct {v7, p0, v0}, Lim/imkey/imkeylibrary/bluetooth/Ble$3;-><init>(Lim/imkey/imkeylibrary/bluetooth/Ble;Ljava/util/concurrent/CountDownLatch;)V

    move-object v3, v1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_SendAndRecvAsync(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;[BIILcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p1

    .line 213
    invoke-static {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->toErrorCode(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    move-result-object p1

    .line 214
    sget-object p2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->SUCCESS:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    if-ne p1, p2, :cond_2

    .line 218
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 222
    :goto_0
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mErrorCode:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    if-eqz p1, :cond_1

    sget-object p2, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->SUCCESS:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    iget-object p2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mErrorCode:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    invoke-virtual {p2}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->get_desc()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ble  <<<<<< "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mResponse:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mResponse:Ljava/lang/String;

    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkImKeyStatus(Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mResponse:Ljava/lang/String;

    return-object p1

    .line 215
    :cond_2
    new-instance p2, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->get_desc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 188
    :cond_3
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "Ble"

    const-string p2, "invalide apdu"

    .line 183
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_5
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    sget-object p2, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    invoke-static {p2}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->toErrorCode(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    move-result-object p2

    invoke-virtual {p2}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->get_desc()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startScan(ILim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->initialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "imkey_sdk_illegal_argument"

    if-lez p1, :cond_2

    if-eqz p2, :cond_1

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->mMapDevices:Ljava/util/HashMap;

    .line 74
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    const/4 v1, 0x4

    new-instance v2, Lim/imkey/imkeylibrary/bluetooth/Ble$1;

    invoke-direct {v2, p0, p2}, Lim/imkey/imkeylibrary/bluetooth/Ble$1;-><init>(Lim/imkey/imkeylibrary/bluetooth/Ble;Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_StartScan(IILcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p1

    .line 91
    sget-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    if-eq p1, v0, :cond_0

    .line 92
    invoke-static {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->toErrorCode(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    move-result-object p1

    invoke-interface {p2, p1}, Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;->onScanFail(Lim/imkey/imkeylibrary/bluetooth/ErrorCode;)V

    :cond_0
    return-void

    .line 71
    :cond_1
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_2
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_3
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_sdk_ble_not_initialize"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopScan()V
    .locals 1

    .line 96
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble;->sFtBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-virtual {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_StopScan()V

    return-void
.end method
