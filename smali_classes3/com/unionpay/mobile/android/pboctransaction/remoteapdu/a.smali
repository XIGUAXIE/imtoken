.class public final Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/pboctransaction/c;


# instance fields
.field a:Lcom/unionpay/mobile/android/pboctransaction/b;

.field private b:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private final g:Landroid/os/Handler$Callback;

.field private final h:Landroid/content/ServiceConnection;

.field private final i:Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->b:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->c:Z

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->e:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->f:Z

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/b;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/b;-><init>(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->g:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;-><init>(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->h:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/d;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/d;-><init>(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->i:Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->b:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    return-object p1
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->i:Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;

    return-object p0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->b:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;
    .locals 11
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

    const-string v0, "plugin-tsm"

    const-string v1, "RemoteApduEngine.readList() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->c:Z

    if-eqz v2, :cond_0

    const-string v2, "D15600010100016111000000B0004101"

    goto :goto_0

    :cond_0
    const-string v2, "D15600010100016111000000B0004001"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->b:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "00a4040010"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->writeApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "9000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->b:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    const-string v3, "80CA2F0000"

    invoke-interface {v2, v3, v4}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->writeApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lcom/unionpay/mobile/android/pboctransaction/e;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "06"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v3}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unionpay/mobile/android/pboctransaction/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Lcom/unionpay/mobile/android/model/a;

    const/4 v6, 0x4

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    const-string v8, ""

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string p1, "RemoteApduEngine.readList() ---"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final a()V
    .locals 3

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->d()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "plugin-tsm"

    const-string v2, "unbindTSMService() ++"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->f:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->f:Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/b;Landroid/content/Context;)V
    .locals 5

    const-string v0, "plugin-tsm"

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/b;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->d:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->g:Landroid/os/Handler$Callback;

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->e:Landroid/os/Handler;

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.unionpay.mobile.tsm.PBOCService"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.unionpay.mobile.tsm"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->e:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->e:Landroid/os/Handler;

    const/16 v3, 0xbb8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->h:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/b;

    if-eqz p1, :cond_1

    const-string p1, "startTSMService.initFailed()"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/b;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    nop

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/b;

    if-eqz p1, :cond_2

    const-string p1, "startTSMService exception"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/b;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->c:Z

    return-void
.end method

.method public final a([BI)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[---->]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plugin-tsm"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->b:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    invoke-interface {v1, p1, p2}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->writeApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[<----]"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->d()V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->b:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->closeChannel(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->b:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->closeChannel(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->b:Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->closeChannel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
