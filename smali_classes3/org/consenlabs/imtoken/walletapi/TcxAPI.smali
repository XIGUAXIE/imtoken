.class public Lorg/consenlabs/imtoken/walletapi/TcxAPI;
.super Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;
.source "TcxAPI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tcx"

    .line 29
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x1

    .line 24
    invoke-static {p1}, Lcom/sun/jna/Native;->setProtected(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/consenlabs/imtoken/walletapi/TcxAPI;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/TokenException;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->buildErrorResult(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/TokenException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/consenlabs/imtoken/walletapi/TcxAPI;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->checkBiometricMode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/consenlabs/imtoken/walletapi/TcxAPI;[B)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->cacheDerivedKey([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/consenlabs/imtoken/walletapi/TcxAPI;[B)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->getDerivedKey([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/consenlabs/imtoken/walletapi/TcxAPI;[B)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->deleteDerivedKey([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/consenlabs/imtoken/walletapi/TcxAPI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->callTcxApiInner(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildErrorResult(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/TokenException;
    .locals 2

    .line 70
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$Response;->newBuilder()Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->setIsSuccess(Z)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->setError(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$Response$Builder;->build()Lorg/consenlabs/imtoken/tcx/Api$Response;

    move-result-object p1

    .line 71
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$Response;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private cacheDerivedKey([B)Ljava/lang/String;
    .locals 3

    .line 114
    :try_start_0
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->parseFrom([B)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getId()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/google/protobuf/Any;->newBuilder()Lcom/google/protobuf/Any$Builder;

    move-result-object v1

    const-string v2, "imtoken.get_derived_key"

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Any$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/protobuf/Any$Builder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/Any$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Any$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/Any;

    move-result-object p1

    .line 120
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction;->newBuilder()Lorg/consenlabs/imtoken/tcx/Api$TcxAction$Builder;

    move-result-object v1

    const-string v2, "get_derived_key"

    invoke-virtual {v1, v2}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction$Builder;->setMethod(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/Api$TcxAction$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction$Builder;->setParam(Lcom/google/protobuf/Any;)Lorg/consenlabs/imtoken/tcx/Api$TcxAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction$Builder;->build()Lorg/consenlabs/imtoken/tcx/Api$TcxAction;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->callTcxApiInner(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :try_start_1
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->parseFrom([B)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    :try_start_2
    new-instance v1, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDerivedKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->encryptData([B)V

    .line 132
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1, v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->setId(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p1, v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->setEnableDerivedKey(Z)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    const-string v0, "fingerprint"

    .line 135
    invoke-virtual {p1, v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->setMode(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :catch_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "tcx_derived_key_result_parse_error"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    .line 140
    :catch_1
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "invalid_cache_derived_key_param"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private callTcxApiInner(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 181
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;->INSTANCE:Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;

    .line 183
    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;->clear_err()V

    .line 185
    invoke-interface {v0, p1}, Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;->call_tcx_api(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;->get_last_err_message()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-interface {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;->free_const_string(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-interface {v0, p1}, Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;->free_const_string(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v1

    .line 195
    :cond_0
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/TcxException;

    invoke-direct {p1, v2}, Lorg/consenlabs/imtoken/walletapi/TcxException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkBiometricMode()Ljava/lang/String;
    .locals 2

    .line 106
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->checkBiometricMode()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->setMode(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteDerivedKey([B)Ljava/lang/String;
    .locals 3

    .line 166
    :try_start_0
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->parseFrom([B)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getId()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->deleteEncrypted()V

    .line 176
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 168
    :catch_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "invalid_get_derived_key_param"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDerivedKey([B)Ljava/lang/String;
    .locals 2

    .line 147
    :try_start_0
    invoke-static {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->parseFrom([B)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getId()Ljava/lang/String;

    move-result-object p1

    .line 153
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->decryptData()[B

    move-result-object v0

    .line 155
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->setId(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    .line 157
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->setDerivedKey(Ljava/lang/String;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->build()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 149
    :catch_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "invalid_get_derived_key_param"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 40
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/consenlabs/imtoken/walletapi/TcxAPI$1;-><init>(Lorg/consenlabs/imtoken/walletapi/TcxAPI;Lcom/facebook/react/bridge/Promise;Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;)V

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ExecutorUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public callTcxApi(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 76
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;-><init>(Lorg/consenlabs/imtoken/walletapi/TcxAPI;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "TcxAPI"

    return-object v0
.end method
