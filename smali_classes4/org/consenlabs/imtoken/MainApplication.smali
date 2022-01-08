.class public Lorg/consenlabs/imtoken/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcom/facebook/react/ReactApplication;
.implements Lcl/json/ShareApplication;
.implements Lorg/consenlabs/tokencore/wallet/KeystoreStorage;


# static fields
.field static final SA_SERVER_URL_DEBUG:Ljava/lang/String; = "https://imtoken.datasink.sensorsdata.cn/sa?project=default&token=27d69b3e7fd25949"

.field static final SA_SERVER_URL_RELEASE:Ljava/lang/String; = "https://imtoken.datasink.sensorsdata.cn/sa?project=production&token=27d69b3e7fd25949"

.field private static sInstance:Lorg/consenlabs/imtoken/MainApplication;


# instance fields
.field private final mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "connector"

    .line 103
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 119
    new-instance v0, Lorg/consenlabs/imtoken/MainApplication$1;

    invoke-direct {v0, p0, p0}, Lorg/consenlabs/imtoken/MainApplication$1;-><init>(Lorg/consenlabs/imtoken/MainApplication;Landroid/app/Application;)V

    iput-object v0, p0, Lorg/consenlabs/imtoken/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method

.method static getDefaultKeyDirectory()Ljava/io/File;
    .locals 3

    .line 159
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/consenlabs/imtoken/MainApplication;->getsInstance()Lorg/consenlabs/imtoken/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/imtoken/MainApplication;->getKeystoreDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "wallets"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static getsInstance()Lorg/consenlabs/imtoken/MainApplication;
    .locals 1

    .line 116
    sget-object v0, Lorg/consenlabs/imtoken/MainApplication;->sInstance:Lorg/consenlabs/imtoken/MainApplication;

    return-object v0
.end method

.method private initSensorsDataSDK()V
    .locals 3

    .line 327
    :try_start_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    const-string v1, "https://imtoken.datasink.sensorsdata.cn/sa?project=production&token=27d69b3e7fd25949"

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-static {p0}, Lorg/consenlabs/imtoken/MainApplication;->isDebugMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableLog(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    const/4 v2, 0x3

    .line 331
    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableTrackAppCrash()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 336
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->startWithConfigOptions(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    return-void
.end method

.method public static isDebugMode(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 349
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 350
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 352
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static synthetic lambda$onCreate$0(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    const-string v0, "https://e7adfaae647e4438813db82e877ecbd7@o55920.ingest.sentry.io/621773"

    .line 172
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setDsn(Ljava/lang/String;)V

    return-void
.end method

.method private setCursorWindowSize()V
    .locals 3

    .line 276
    :try_start_0
    const-class v0, Landroid/database/CursorWindow;

    const-string v1, "sCursorWindowSize"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    const/high16 v2, 0xa00000

    .line 278
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/32 v0, 0x1400000

    .line 288
    :try_start_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->getInstance(Landroid/content/Context;)Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/facebook/react/modules/storage/ReactDatabaseSupplier;->setMaximumSize(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 298
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 299
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_0

    .line 300
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getFileProviderAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "im.token.app.provider"

    return-object v0
.end method

.method public getKeystoreDir()Ljava/io/File;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/MainApplication;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/consenlabs/imtoken/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 168
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 169
    sput-object p0, Lorg/consenlabs/imtoken/MainApplication;->sInstance:Lorg/consenlabs/imtoken/MainApplication;

    .line 171
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/consenlabs/imtoken/-$$Lambda$MainApplication$--dvIQLETZvrtPCnR_m6TTIXifQ;->INSTANCE:Lorg/consenlabs/imtoken/-$$Lambda$MainApplication$--dvIQLETZvrtPCnR_m6TTIXifQ;

    invoke-static {v0, v1}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    .line 175
    invoke-direct {p0}, Lorg/consenlabs/imtoken/MainApplication;->initSensorsDataSDK()V

    const-string v0, "4A2B655485ABBAB54BD30298BB0A5B55"

    .line 177
    sput-object v0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->XPubCommonKey128:Ljava/lang/String;

    const-string v1, "73518399CB98DCD114D873E06EBF4BCC"

    .line 178
    sput-object v1, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->XPubCommonIv:Ljava/lang/String;

    .line 179
    sput-object v0, Lorg/consenlabs/imtoken/walletapi/Util;->XPubCommonKey128:Ljava/lang/String;

    .line 180
    sput-object v1, Lorg/consenlabs/imtoken/walletapi/Util;->XPubCommonIv:Ljava/lang/String;

    .line 181
    sput-object p0, Lorg/consenlabs/tokencore/wallet/WalletManager;->storage:Lorg/consenlabs/tokencore/wallet/KeystoreStorage;

    .line 182
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/WalletManager;->scanWallets()V

    .line 185
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->newBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    .line 186
    invoke-static {}, Lorg/consenlabs/imtoken/MainApplication;->getDefaultKeyDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->setFileDir(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    sget-object v1, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->XPubCommonKey128:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->setXpubCommonKey(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    sget-object v1, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->XPubCommonIv:Ljava/lang/String;

    .line 188
    invoke-virtual {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->setXpubCommonIv(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->setIsDebug(Z)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    .line 191
    invoke-static {}, Lcom/google/protobuf/Any;->newBuilder()Lcom/google/protobuf/Any$Builder;

    move-result-object v2

    const-string v3, "imtoken.init_token_core_x"

    .line 192
    invoke-virtual {v2, v3}, Lcom/google/protobuf/Any$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/protobuf/Any$Builder;

    move-result-object v2

    .line 193
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/protobuf/Any$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Any$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/Any;

    move-result-object v0

    .line 196
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->newBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v2

    const-string v3, "init_token_core_x"

    .line 197
    invoke-virtual {v2, v3}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->setMethod(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v2

    .line 198
    invoke-virtual {v2, v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->setParam(Lcom/google/protobuf/Any;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->build()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 203
    sget-object v2, Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;->INSTANCE:Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;

    invoke-interface {v2, v0}, Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;->call_tcx_api(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/MainApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setFileDir(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    sget-object v2, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->XPubCommonKey128:Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setXpubCommonKey(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    sget-object v2, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->XPubCommonIv:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setXpubCommonIv(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setIsDebug(Z)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    const-string v2, "Android"

    .line 211
    invoke-virtual {v0, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->setSystem(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/google/protobuf/Any;->newBuilder()Lcom/google/protobuf/Any$Builder;

    move-result-object v2

    const-string v3, "imtoken.init_imkey_core_x"

    .line 214
    invoke-virtual {v2, v3}, Lcom/google/protobuf/Any$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/protobuf/Any$Builder;

    move-result-object v2

    .line 215
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/protobuf/Any$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Any$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/Any;

    move-result-object v0

    .line 218
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object v2

    const-string v3, "init_imkey_core_x"

    .line 219
    invoke-virtual {v2, v3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;->setMethod(Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object v2

    .line 220
    invoke-virtual {v2, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;->setParam(Lcom/google/protobuf/Any;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;->build()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 225
    sget-object v2, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;

    invoke-interface {v2, v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->call_imkey_api(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    invoke-static {p0, v1}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 229
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/MainApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/consenlabs/imtoken/MainApplication;->initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V

    .line 231
    invoke-direct {p0}, Lorg/consenlabs/imtoken/MainApplication;->setCursorWindowSize()V

    .line 232
    invoke-static {p0}, Lcn/jiguang/plugins/push/JPushModule;->registerActivityLifecycle(Landroid/app/Application;)V

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/MainApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 236
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 316
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->getInstance()Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->disconnectAllDevices()V

    .line 318
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
