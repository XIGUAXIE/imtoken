.class public final Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/pboctransaction/c;


# static fields
.field private static d:Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;


# instance fields
.field private a:Lorg/simalliance/openmobileapi/SEService;

.field private b:[Lorg/simalliance/openmobileapi/Channel;

.field private c:Lcom/unionpay/mobile/android/pboctransaction/b;

.field private e:Landroid/os/Handler$Callback;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;

    invoke-direct {v0}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;-><init>()V

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->d:Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a:Lorg/simalliance/openmobileapi/SEService;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/simalliance/openmobileapi/Channel;

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->b:[Lorg/simalliance/openmobileapi/Channel;

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/c;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/c;-><init>(Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->e:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->e:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;)Lcom/unionpay/mobile/android/pboctransaction/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->c:Lcom/unionpay/mobile/android/pboctransaction/b;

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unionpay/mobile/android/pboctransaction/simapdu/a$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "plugin-sim"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "====>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->b:[Lorg/simalliance/openmobileapi/Channel;

    array-length v1, v1

    const/4 v2, 0x0

    if-le p2, v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    const-string v1, "00A40400"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "01A40400"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "02A40400"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_5

    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a(I)V

    const/16 v0, 0x8

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    const/16 v3, 0xa

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->b([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_4

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_1
    const-string p1, "plugin-sim"

    const-string p2, " writeApdu openchannel exception!!!"

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/unionpay/mobile/android/pboctransaction/simapdu/a$a;

    invoke-direct {p1}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/a$a;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :try_start_2
    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->b:[Lorg/simalliance/openmobileapi/Channel;

    aget-object p2, v1, p2

    invoke-virtual {p2, p1}, Lorg/simalliance/openmobileapi/Channel;->transmit([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    const-string p1, "plugin-sim"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "<===="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    new-instance p1, Lcom/unionpay/mobile/android/pboctransaction/simapdu/a$a;

    invoke-direct {p1}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/a$a;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(I)V
    .locals 3

    const-string v0, "plugin-sim"

    const-string v1, "closeChannel(int) +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->b:[Lorg/simalliance/openmobileapi/Channel;

    aget-object v2, v1, p1

    if-eqz v2, :cond_0

    array-length v2, v1

    if-gt p1, v2, :cond_0

    :try_start_0
    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/Channel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, " mChannel[channel].close() exception!!!"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->b:[Lorg/simalliance/openmobileapi/Channel;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    :cond_0
    const-string p1, "closeChannel(int) ---"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;)Lcom/unionpay/mobile/android/pboctransaction/b;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->c:Lcom/unionpay/mobile/android/pboctransaction/b;

    return-object v0
.end method

.method private b([BI)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->getReaders()[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->openSession()Lorg/simalliance/openmobileapi/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simalliance/openmobileapi/Session;->openLogicalChannel([B)Lorg/simalliance/openmobileapi/Channel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->b:[Lorg/simalliance/openmobileapi/Channel;

    aput-object p1, v0, p2

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->getSelectResponse()[B

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public static declared-synchronized e()Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;
    .locals 2

    const-class v0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->d:Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/pboctransaction/d;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation

    const-string v0, "nfcphone"

    const-string v1, "plugin-sim"

    const-string v2, " SIMEngine.readList() +++"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const-string v4, "A0000003330101"

    invoke-virtual {p1, v4}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "full AID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v5, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;

    invoke-direct {v5, v4, v2}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;

    const-string v5, "06"

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v3}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unionpay/mobile/android/pboctransaction/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " cardNumber="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    new-instance v12, Lcom/unionpay/mobile/android/model/a;

    const/16 v7, 0x10

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v11, 0x1

    move-object v6, v12

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " valid Number= "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object v2, v4

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_2

    :cond_3
    :try_start_2
    const-string p1, " SIMEngine --- there has no PBOC aids!!!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :cond_4
    :goto_1
    return-object v2

    :catchall_1
    move-exception p1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " SimEngine Exception = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string p1, " SIMEngine.readList() ---"

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final a()V
    .locals 3

    const-string v0, "plugin-sim"

    const-string v1, "SIMEngine.destroy() +++ "

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mSEService = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->d()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mSEService.isConnected() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, " mSEService.shutdown() "

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/SEService;->shutdown()V

    :cond_0
    const-string v1, "SIMEngine.destroy() --- "

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/b;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->c:Lcom/unionpay/mobile/android/pboctransaction/b;

    const/4 p1, 0x2

    :try_start_0
    new-instance p2, Lcom/unionpay/mobile/android/utils/l;

    invoke-direct {p2}, Lcom/unionpay/mobile/android/utils/l;-><init>()V

    invoke-static {}, Lcom/unionpay/mobile/android/utils/l;->a()Lorg/simalliance/openmobileapi/SEService;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/unionpay/mobile/android/utils/l;->a()Lorg/simalliance/openmobileapi/SEService;

    move-result-object p2

    invoke-virtual {p2}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/unionpay/mobile/android/utils/l;->a()Lorg/simalliance/openmobileapi/SEService;

    move-result-object p2

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a:Lorg/simalliance/openmobileapi/SEService;

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->f:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->f:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p2, "plugin-sim"

    const-string v0, " service ERROR!!!"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->f:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a([BI)[B
    .locals 2

    const-string v0, "plugin-sim"

    const-string v1, " SIMEngine.sendApdu() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/unionpay/mobile/android/pboctransaction/simapdu/a$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/a$a;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/a$a;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    const-string p2, " SIMEngine.sendApdu() ---"

    invoke-static {v0, p2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->d()V

    return-void
.end method

.method public final d()V
    .locals 3

    const-string v0, "plugin-sim"

    const-string v1, "closeChannels() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->b:[Lorg/simalliance/openmobileapi/Channel;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "closeChannels() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
