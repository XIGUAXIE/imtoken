.class public Lcom/alipay/sdk/app/statistic/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "ClientBindException"

.field public static final B:Ljava/lang/String; = "SaveTradeTokenError"

.field public static final C:Ljava/lang/String; = "ClientBindServiceFailed"

.field public static final D:Ljava/lang/String; = "TryStartServiceEx"

.field public static final E:Ljava/lang/String; = "BindWaitTimeoutEx"

.field public static final F:Ljava/lang/String; = "CheckClientExistEx"

.field public static final G:Ljava/lang/String; = "CheckClientSignEx"

.field public static final H:Ljava/lang/String; = "GetInstalledAppEx"

.field public static final I:Ljava/lang/String; = "ParserTidClientKeyEx"

.field public static final J:Ljava/lang/String; = "PgApiInvoke"

.field public static final K:Ljava/lang/String; = "PgBindStarting"

.field public static final L:Ljava/lang/String; = "PgBinded"

.field public static final M:Ljava/lang/String; = "PgBindEnd"

.field public static final N:Ljava/lang/String; = "PgBindPay"

.field public static final O:Ljava/lang/String; = "PgReturn"

.field public static final P:Ljava/lang/String; = "PgWltVer"

.field public static final Q:Ljava/lang/String; = "PgOpenStarting"

.field public static final R:Ljava/lang/String; = "ErrIntentEx"

.field public static final S:Ljava/lang/String; = "ErrActNull"

.field public static final T:Ljava/lang/String; = "ErrActNull"

.field public static final U:Ljava/lang/String; = "GetInstalledAppEx"

.field public static final V:Ljava/lang/String; = "StartLaunchAppTransEx"

.field public static final W:Ljava/lang/String; = "CheckLaunchAppExistEx"

.field public static final X:Ljava/lang/String; = "LogCurrentAppLaunchSwitch"

.field public static final Y:Ljava/lang/String; = "LogCurrentQueryTime"

.field public static final Z:Ljava/lang/String; = "LogCalledPackage"

.field public static final a:Ljava/lang/String; = "net"

.field public static final aa:Ljava/lang/String; = "LogBindCalledH5"

.field public static final ab:Ljava/lang/String; = "LogCalledH5"

.field public static final ac:Ljava/lang/String; = "LogHkLoginByIntent"

.field public static final ad:Ljava/lang/String; = "SchemePayWrongHashEx"

.field public static final ae:Ljava/lang/String; = "LogAppLaunchSwitchEnabled"

.field public static final af:Ljava/lang/String; = "H5CbUrlEmpty"

.field public static final ag:Ljava/lang/String; = "H5CbEx"

.field public static final ah:Ljava/lang/String; = "BuildSchemePayUriError"

.field public static final ai:Ljava/lang/String; = "StartActivityEx"

.field public static final aj:Ljava/lang/String; = "JSONEx"

.field public static final ak:Ljava/lang/String; = "ParseBundleSerializableError"

.field public static final al:Ljava/lang/String; = "ParseSchemeQueryError"

.field public static final am:Ljava/lang/String; = "tid_context_null"

.field public static final an:Ljava/lang/String; = "partner"

.field public static final ao:Ljava/lang/String; = "out_trade_no"

.field public static final ap:Ljava/lang/String; = "trade_no"

.field public static final aq:Ljava/lang/String; = "biz_content"

.field public static final ar:Ljava/lang/String; = "app_id"

.field public static final b:Ljava/lang/String; = "biz"

.field public static final c:Ljava/lang/String; = "cp"

.field public static final d:Ljava/lang/String; = "auth"

.field public static final e:Ljava/lang/String; = "third"

.field public static final f:Ljava/lang/String; = "tid"

.field public static final g:Ljava/lang/String; = "FormatResultEx"

.field public static final h:Ljava/lang/String; = "GetApdidEx"

.field public static final i:Ljava/lang/String; = "GetApdidNull"

.field public static final j:Ljava/lang/String; = "GetApdidTimeout"

.field public static final k:Ljava/lang/String; = "GetUtdidEx"

.field public static final l:Ljava/lang/String; = "GetPackageInfoEx"

.field public static final m:Ljava/lang/String; = "NotIncludeSignatures"

.field public static final n:Ljava/lang/String; = "GetInstalledPackagesEx"

.field public static final o:Ljava/lang/String; = "GetPublicKeyFromSignEx"

.field public static final p:Ljava/lang/String; = "H5PayNetworkError"

.field public static final q:Ljava/lang/String; = "H5AuthNetworkError"

.field public static final r:Ljava/lang/String; = "SSLError"

.field public static final s:Ljava/lang/String; = "SSLProceed"

.field public static final t:Ljava/lang/String; = "SSLDenied"

.field public static final u:Ljava/lang/String; = "H5PayDataAnalysisError"

.field public static final v:Ljava/lang/String; = "H5AuthDataAnalysisError"

.field public static final w:Ljava/lang/String; = "PublicKeyUnmatch"

.field public static final x:Ljava/lang/String; = "ClientBindFailed"

.field public static final y:Ljava/lang/String; = "TriDesEncryptError"

.field public static final z:Ljava/lang/String; = "TriDesDecryptError"


# instance fields
.field private aA:Ljava/lang/String;

.field private aB:Ljava/lang/String;

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field private av:Ljava/lang/String;

.field private aw:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 129
    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->az:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 138
    :cond_0
    invoke-static {}, Lcom/alipay/sdk/app/statistic/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->as:Ljava/lang/String;

    .line 139
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->au:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/a$c;->a(Landroid/content/Context;)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Lcom/alipay/sdk/app/statistic/c;->a(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/sdk/app/statistic/c;->av:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/alipay/sdk/app/statistic/c;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/sdk/app/statistic/c;->aw:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->ax:Ljava/lang/String;

    const-string p1, "-"

    .line 143
    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->ay:Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->aB:Ljava/lang/String;

    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 4

    const-string v0, "15.7.4"

    .line 354
    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h.a.3.7.4"

    .line 355
    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const-string p0, "android,3,%s,%s,com.alipay.mcpay,5.0,-,%s,-"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "-"

    if-eqz p0, :cond_0

    .line 314
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x40

    .line 317
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 318
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 319
    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/c;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :catchall_1
    :goto_0
    move-object p0, v0

    move-object v0, v1

    goto :goto_1

    :cond_0
    move-object p0, v0

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 324
    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%s,%s,-,-,-"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 7

    const-string v0, "?"

    if-eqz p0, :cond_3

    .line 332
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 336
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    .line 341
    :try_start_1
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v6, v5}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;[B)Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lcom/alipay/sdk/util/n;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    :goto_1
    move-object v5, v0

    :goto_2
    :try_start_2
    const-string v6, "-"

    .line 344
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    return-object v0

    :cond_3
    :goto_3
    const-string p0, "0"

    return-object p0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    const-string v0, " \u300b "

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 231
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 237
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p0, v3

    .line 238
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :catchall_0
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    .line 202
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm:ss:SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 371
    invoke-static {p0}, Lcom/alipay/sdk/util/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-static {p0}, Lcom/alipay/sdk/util/a;->b(Landroid/content/Context;)Lcom/alipay/sdk/util/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/sdk/util/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 379
    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const-string v6, "android"

    aput-object v6, v5, v0

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    const-string v1, "-"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    aput-object v3, v5, v0

    const/4 v0, 0x6

    aput-object v4, v5, v0

    const/4 v0, 0x7

    const-string v1, "gw"

    aput-object v1, v5, v0

    const/16 v0, 0x8

    aput-object p0, v5, v0

    const-string p0, "%s,%s,%s,%s,%s,%s,%s,%s,%s,-"

    .line 380
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "["

    const-string/jumbo v1, "\u3010"

    .line 211
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "]"

    const-string/jumbo v1, "\u3011"

    .line 212
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "("

    const-string/jumbo v1, "\uff08"

    .line 213
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ")"

    const-string/jumbo v1, "\uff09"

    .line 214
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string/jumbo v1, "\uff0c"

    .line 215
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "^"

    const-string/jumbo v1, "~"

    .line 216
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    const-string/jumbo v1, "\uff03"

    .line 217
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    .line 259
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 260
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "123456789,%s"

    .line 261
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "-"

    :cond_0
    return-object p0
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "mspl"

    const-string v1, "err %s %s %s"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v6, 0x2

    aput-object p3, v3, v6

    .line 163
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 165
    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "^"

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%s,%s,%s,%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    .line 169
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "-"

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, v3, v6

    .line 170
    invoke-static {}, Lcom/alipay/sdk/app/statistic/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 168
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static d()Ljava/lang/String;
    .locals 4

    .line 364
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/tid/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%s,%s,-,-,-"

    .line 366
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    :cond_0
    const-string v1, "&"

    .line 272
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_7

    .line 274
    array-length v5, p0

    move-object v6, v2

    move-object v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_6

    aget-object v9, p0, v8

    const-string v10, "="

    .line 275
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 276
    array-length v10, v9

    if-ne v10, v1, :cond_5

    .line 277
    aget-object v10, v9, v4

    const-string/jumbo v11, "partner"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "\""

    if-eqz v10, :cond_1

    .line 278
    aget-object v2, v9, v3

    invoke-virtual {v2, v11, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 279
    :cond_1
    aget-object v10, v9, v4

    const-string/jumbo v12, "out_trade_no"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 280
    aget-object v6, v9, v3

    invoke-virtual {v6, v11, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 281
    :cond_2
    aget-object v10, v9, v4

    const-string/jumbo v13, "trade_no"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 282
    aget-object v7, v9, v3

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 283
    :cond_3
    aget-object v10, v9, v4

    const-string v11, "biz_content"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 285
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/sys/a;->a()Lcom/alipay/sdk/sys/a;

    move-result-object v10

    aget-object v9, v9, v3

    invoke-static {v10, v9}, Lcom/alipay/sdk/util/n;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 286
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 288
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 291
    :cond_4
    aget-object v10, v9, v4

    const-string v11, "app_id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 293
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 294
    aget-object v2, v9, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    move-object p0, v2

    move-object v2, v7

    goto :goto_2

    :cond_7
    move-object p0, v2

    move-object v6, p0

    .line 301
    :goto_2
    invoke-static {v2}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v6}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    aput-object v2, v5, v3

    aput-object p0, v5, v1

    const-string p0, "%s,%s,-,%s,-,-,-"

    .line 304
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "mspl"

    const-string v1, "event %s %s %s"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v6, 0x2

    aput-object p3, v3, v6

    .line 188
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 190
    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->az:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "^"

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%s,%s,%s,-,-,-,-,-,-,-,-,-,-,%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string p1, "-"

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, v3, v4

    .line 195
    invoke-static {p2}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    .line 196
    invoke-static {p3}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    .line 197
    invoke-static {}, Lcom/alipay/sdk/app/statistic/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 193
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/alipay/sdk/app/statistic/c;->az:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->az:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 251
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->at:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 252
    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->as:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->au:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->av:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->aw:Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->ax:Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->ay:Ljava/lang/String;

    const/4 v1, 0x6

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->az:Ljava/lang/String;

    .line 253
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x7

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->aB:Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    const-string p1, "[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]"

    .line 252
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 183
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/sdk/app/statistic/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/app/statistic/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 152
    invoke-static {p3}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/app/statistic/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 157
    invoke-static {p3}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/app/statistic/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "|"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-direct {p0, p3, p1, p2}, Lcom/alipay/sdk/app/statistic/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
