.class public Lio/sentry/react/RNSentryModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNSentryModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNSentry"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "RNSentry"

.field static final logger:Ljava/util/logging/Logger;

.field private static packageInfo:Landroid/content/pm/PackageInfo;


# instance fields
.field private sentryOptions:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "react-native-sentry"

    .line 49
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/react/RNSentryModule;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 56
    invoke-static {p1}, Lio/sentry/react/RNSentryModule;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    sput-object p1, Lio/sentry/react/RNSentryModule;->packageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 212
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 214
    :catch_0
    sget-object p0, Lio/sentry/react/RNSentryModule;->logger:Ljava/util/logging/Logger;

    const-string v0, "Error getting package info."

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$addBreadcrumb$3(Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/Scope;)V
    .locals 8

    .line 279
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "message"

    .line 281
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    :cond_0
    const-string v1, "type"

    .line 285
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    :cond_1
    const-string v1, "category"

    .line 289
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    :cond_2
    const-string v1, "level"

    .line 293
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 294
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "warning"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "fatal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_2
    const-string v3, "error"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "debug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "info"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    :cond_3
    :goto_0
    if-eqz v2, :cond_8

    if-eq v2, v7, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    .line 311
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    goto :goto_1

    .line 308
    :cond_4
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    goto :goto_1

    .line 305
    :cond_5
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    goto :goto_1

    .line 302
    :cond_6
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    goto :goto_1

    .line 299
    :cond_7
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    goto :goto_1

    .line 296
    :cond_8
    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    :cond_9
    :goto_1
    const-string v1, "data"

    .line 316
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 317
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    .line 318
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 319
    :goto_2
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 320
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v0, v2, v3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 327
    :cond_a
    invoke-virtual {p1, v0}, Lio/sentry/Scope;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3164ae -> :sswitch_4
        0x5b09653 -> :sswitch_3
        0x5c4d208 -> :sswitch_2
        0x5cb3504 -> :sswitch_1
        0x4305af9c -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic lambda$clearBreadcrumbs$4(Lio/sentry/Scope;)V
    .locals 0

    .line 334
    invoke-virtual {p0}, Lio/sentry/Scope;->clearBreadcrumbs()V

    return-void
.end method

.method static synthetic lambda$setExtra$5(Ljava/lang/String;Ljava/lang/String;Lio/sentry/Scope;)V
    .locals 0

    .line 341
    invoke-virtual {p2, p0, p1}, Lio/sentry/Scope;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setTag$6(Ljava/lang/String;Ljava/lang/String;Lio/sentry/Scope;)V
    .locals 0

    .line 348
    invoke-virtual {p2, p0, p1}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setUser$2(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/Scope;)V
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 236
    invoke-virtual {p2, p0}, Lio/sentry/Scope;->setUser(Lio/sentry/protocol/User;)V

    goto :goto_1

    .line 238
    :cond_0
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    if-eqz p0, :cond_4

    const-string v1, "email"

    .line 241
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setEmail(Ljava/lang/String;)V

    :cond_1
    const-string v1, "id"

    .line 245
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    :cond_2
    const-string v1, "username"

    .line 249
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setUsername(Ljava/lang/String;)V

    :cond_3
    const-string v1, "ip_address"

    .line 253
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 254
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/protocol/User;->setIpAddress(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_6

    .line 259
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 260
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 261
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 262
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
    :cond_5
    invoke-virtual {v0, p0}, Lio/sentry/protocol/User;->setOthers(Ljava/util/Map;)V

    .line 271
    :cond_6
    invoke-virtual {p2, v0}, Lio/sentry/Scope;->setUser(Lio/sentry/protocol/User;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$startWithOptions$0(Lio/sentry/SentryEvent;Ljava/lang/Object;)Lio/sentry/SentryEvent;
    .locals 3

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getExceptions()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/protocol/SentryException;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lio/sentry/protocol/SentryException;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JavascriptException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    nop

    .line 131
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 133
    invoke-virtual {p1}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "sentry.javascript.react-native"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "event.origin"

    if-eqz v0, :cond_1

    const-string p1, "javascript"

    .line 136
    invoke-virtual {p0, v1, p1}, Lio/sentry/SentryEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "sentry.java.android"

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "sentry.native"

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "android"

    .line 138
    invoke-virtual {p0, v1, v0}, Lio/sentry/SentryEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "event.environment"

    if-eqz p1, :cond_3

    const-string p1, "native"

    .line 141
    invoke-virtual {p0, v0, p1}, Lio/sentry/SentryEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "java"

    .line 143
    invoke-virtual {p0, v0, p1}, Lio/sentry/SentryEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-object p0
.end method

.method private logLevel(I)Ljava/util/logging/Level;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 228
    sget-object p1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    return-object p1

    .line 226
    :cond_0
    sget-object p1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    return-object p1

    .line 224
    :cond_1
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    return-object p1

    .line 222
    :cond_2
    sget-object p1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    return-object p1
.end method


# virtual methods
.method public addBreadcrumb(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 278
    new-instance v0, Lio/sentry/react/-$$Lambda$RNSentryModule$xl5vKdtKzXDXwsSDwsgHA122ZfE;

    invoke-direct {v0, p1}, Lio/sentry/react/-$$Lambda$RNSentryModule$xl5vKdtKzXDXwsSDwsgHA122ZfE;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-static {v0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public captureEnvelope(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 191
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/react/RNSentryModule;->sentryOptions:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "UTF-8"

    .line 193
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 192
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 196
    :catch_0
    sget-object p1, Lio/sentry/react/RNSentryModule;->logger:Ljava/util/logging/Logger;

    const-string v0, "Error reading envelope"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    .line 198
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 333
    sget-object v0, Lio/sentry/react/-$$Lambda$RNSentryModule$UXBbDDjVrpP0efteWI-s6CIxXek;->INSTANCE:Lio/sentry/react/-$$Lambda$RNSentryModule$UXBbDDjVrpP0efteWI-s6CIxXek;

    invoke-static {v0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public crash()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TEST - Sentry Client Crash (only works in release mode)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fetchRelease(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 181
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 182
    sget-object v1, Lio/sentry/react/RNSentryModule;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v1, Lio/sentry/react/RNSentryModule;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v1, Lio/sentry/react/RNSentryModule;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "nativeClientAvailable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "nativeTransport"

    .line 68
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNSentry"

    return-object v0
.end method

.method public getStringBytesLength(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$startWithOptions$1$RNSentryModule(Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 6

    const-string v0, "dsn"

    .line 75
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    sget-object v1, Lio/sentry/react/RNSentryModule;->logger:Ljava/util/logging/Logger;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v5, "Starting with DSN: \'%s\'"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setDsn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 81
    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setDsn(Ljava/lang/String;)V

    :goto_0
    const-string v0, "debug"

    .line 83
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setDebug(Ljava/lang/Boolean;)V

    :cond_1
    const-string v0, "maxBreadcrumbs"

    .line 86
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setMaxBreadcrumbs(I)V

    :cond_2
    const-string v0, "environment"

    .line 89
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 90
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnvironment(Ljava/lang/String;)V

    :cond_3
    const-string v0, "release"

    .line 92
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 93
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setRelease(Ljava/lang/String;)V

    :cond_4
    const-string v0, "dist"

    .line 95
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 96
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setDist(Ljava/lang/String;)V

    :cond_5
    const-string v0, "enableAutoSessionTracking"

    .line 98
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 99
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSessionTracking(Z)V

    :cond_6
    const-string v0, "sessionTrackingIntervalMillis"

    .line 101
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 102
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setSessionTrackingIntervalMillis(J)V

    :cond_7
    const-string v0, "enableNdkScopeSync"

    .line 104
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 105
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopeSync(Z)V

    :cond_8
    const-string v0, "attachStacktrace"

    .line 107
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 108
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachStacktrace(Z)V

    :cond_9
    const-string v0, "attachThreads"

    .line 110
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 113
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachThreads(Z)V

    .line 116
    :cond_a
    sget-object v0, Lio/sentry/react/-$$Lambda$RNSentryModule$OTy9FoDkHvQz92-otKAoPExm7VY;->INSTANCE:Lio/sentry/react/-$$Lambda$RNSentryModule$OTy9FoDkHvQz92-otKAoPExm7VY;

    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V

    const-string v0, "enableNativeCrashHandling"

    .line 152
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 153
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getIntegrations()Ljava/util/List;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Integration;

    .line 155
    instance-of v4, v1, Lio/sentry/UncaughtExceptionHandlerIntegration;

    if-nez v4, :cond_c

    instance-of v4, v1, Lio/sentry/android/core/AnrIntegration;

    if-nez v4, :cond_c

    instance-of v4, v1, Lio/sentry/android/core/NdkIntegration;

    if-eqz v4, :cond_b

    .line 157
    :cond_c
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    :cond_d
    sget-object p1, Lio/sentry/react/RNSentryModule;->logger:Ljava/util/logging/Logger;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getIntegrations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Native Integrations \'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 163
    iput-object p2, p0, Lio/sentry/react/RNSentryModule;->sentryOptions:Lio/sentry/SentryOptions;

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 340
    new-instance v0, Lio/sentry/react/-$$Lambda$RNSentryModule$LJ-acsfWZZ5aFW2-ml6MIJ-bw1Q;

    invoke-direct {v0, p1, p2}, Lio/sentry/react/-$$Lambda$RNSentryModule$LJ-acsfWZZ5aFW2-ml6MIJ-bw1Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 171
    sget-object v0, Lio/sentry/react/RNSentryModule;->logger:Ljava/util/logging/Logger;

    invoke-direct {p0, p1}, Lio/sentry/react/RNSentryModule;->logLevel(I)Ljava/util/logging/Level;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 347
    new-instance v0, Lio/sentry/react/-$$Lambda$RNSentryModule$V3jYqbe6Tc30RoyaljSKy0zydgs;

    invoke-direct {v0, p1, p2}, Lio/sentry/react/-$$Lambda$RNSentryModule$V3jYqbe6Tc30RoyaljSKy0zydgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public setUser(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 234
    new-instance v0, Lio/sentry/react/-$$Lambda$RNSentryModule$rrVgWy-5FXrBwhOfighFZhZF8Ww;

    invoke-direct {v0, p1, p2}, Lio/sentry/react/-$$Lambda$RNSentryModule$rrVgWy-5FXrBwhOfighFZhZF8Ww;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-static {v0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public startWithOptions(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 74
    invoke-virtual {p0}, Lio/sentry/react/RNSentryModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    new-instance v1, Lio/sentry/react/-$$Lambda$RNSentryModule$nFtHnHXGLQMzOfMytz6xRigKlhg;

    invoke-direct {v1, p0, p1}, Lio/sentry/react/-$$Lambda$RNSentryModule$nFtHnHXGLQMzOfMytz6xRigKlhg;-><init>(Lio/sentry/react/RNSentryModule;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-static {v0, v1}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    const/4 p1, 0x1

    .line 166
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
