.class public final Lcom/unionpay/mobile/android/pboctransaction/samsung/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/pboctransaction/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unionpay/mobile/android/pboctransaction/b;

.field private c:Lcom/unionpay/client3/tsm/ITsmConnection;

.field private d:I

.field private e:Landroid/os/Handler$Callback;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->d:I

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/samsung/c;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/c;-><init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->e:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->e:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Lcom/unionpay/client3/tsm/ITsmConnection;)Lcom/unionpay/client3/tsm/ITsmConnection;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->c:Lcom/unionpay/client3/tsm/ITsmConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->b:Lcom/unionpay/mobile/android/pboctransaction/b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/b;->a()V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;
    .locals 10
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

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->c:Lcom/unionpay/client3/tsm/ITsmConnection;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    iget v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->d:I

    invoke-interface {p1, v1}, Lcom/unionpay/client3/tsm/ITsmConnection;->getSeApps(I)[Lcom/unionpay/client3/tsm/SeAppInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v1, p1

    if-lez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/unionpay/client3/tsm/SeAppInfo;->getAppAid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "A000000333"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/unionpay/client3/tsm/SeAppInfo;->getAppAid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_0

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "06"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_1

    new-instance v3, Lcom/unionpay/mobile/android/model/a;

    const/4 v5, 0x1

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/unionpay/client3/tsm/SeAppInfo;->getAppAid()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/unionpay/client3/tsm/SeAppInfo;->getPan()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception p1

    :goto_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_4
    return-object v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/b;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->b:Lcom/unionpay/mobile/android/pboctransaction/b;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a:Landroid/content/Context;

    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.unionpay.client3.action.TSM_MODEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.unionpay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v1, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;-><init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "plugin-clientV3"

    const-string v0, "startSamsungService() failed!!!"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Z)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->f:Landroid/os/Handler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->f:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Z)V

    return-void
.end method

.method public final a([BI)[B
    .locals 3

    const-string v0, "plugin-clientV3"

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->c:Lcom/unionpay/client3/tsm/ITsmConnection;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->c:Lcom/unionpay/client3/tsm/ITsmConnection;

    iget v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->d:I

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, p2}, Lcom/unionpay/client3/tsm/ITsmConnection;->sendApdu(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "<---"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
