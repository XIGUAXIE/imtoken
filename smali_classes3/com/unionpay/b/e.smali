.class public final Lcom/unionpay/b/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unionpay/UPQuerySEPayInfoCallback;

.field private c:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/unionpay/tsmservice/mi/request/QueryVendorPayStatusRequestParams;

.field private final h:Landroid/os/Handler$Callback;

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/unionpay/tsmservice/mi/UPTsmAddon$UPTsmConnectionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/UPQuerySEPayInfoCallback;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unionpay/b/e;->f:Z

    new-instance v1, Lcom/unionpay/b/f;

    invoke-direct {v1, p0}, Lcom/unionpay/b/f;-><init>(Lcom/unionpay/b/e;)V

    iput-object v1, p0, Lcom/unionpay/b/e;->h:Landroid/os/Handler$Callback;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/b/e;->h:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/unionpay/b/e;->i:Landroid/os/Handler;

    new-instance v1, Lcom/unionpay/b/g;

    invoke-direct {v1, p0}, Lcom/unionpay/b/g;-><init>(Lcom/unionpay/b/e;)V

    iput-object v1, p0, Lcom/unionpay/b/e;->j:Lcom/unionpay/tsmservice/mi/UPTsmAddon$UPTsmConnectionListener;

    iput-object p1, p0, Lcom/unionpay/b/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/unionpay/b/e;->b:Lcom/unionpay/UPQuerySEPayInfoCallback;

    iput-boolean p3, p0, Lcom/unionpay/b/e;->f:Z

    if-eqz p3, :cond_2

    const-string p1, "entryexpro"

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/b/e;->a:Landroid/content/Context;

    const-string p2, "mode"

    invoke-static {p1, p2}, Lcom/unionpay/utils/UPUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Lcom/unionpay/utils/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "02"

    :goto_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/unionpay/b/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/b/e;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/unionpay/b/e;ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0xfa0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/UPSEInfoResp;->ERROR_NOT_SUPPORT:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/unionpay/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/unionpay/b/e;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "vendorPayName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    const-string v0, "vendorPayAliasType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    const-string v0, "vendorPayStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "errorDesc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cardNumber"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/unionpay/b/e;->a:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    const-string v5, "se_type"

    invoke-static {v3, v4, v5}, Lcom/unionpay/utils/UPUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/UPSEInfoResp;->ERROR_NOT_SUPPORT:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/unionpay/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/UPSEInfoResp;->ERROR_NOT_READY:Ljava/lang/String;

    const-string v2, "not ready"

    :goto_1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/unionpay/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-lez v2, :cond_6

    iget-object v0, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/unionpay/b/e;->c()V

    iget-boolean v3, p0, Lcom/unionpay/b/e;->f:Z

    if-eqz v3, :cond_4

    const-string v3, "name"

    const-string v4, "seType"

    const-string v5, "cardNumbers"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    :cond_4
    iget-object p0, p0, Lcom/unionpay/b/e;->b:Lcom/unionpay/UPQuerySEPayInfoCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0, v0, v1, v2, p1}, Lcom/unionpay/UPQuerySEPayInfoCallback;->onResult(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_5
    return-void

    :cond_6
    iget-object p1, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/UPSEInfoResp;->ERROR_NOT_READY:Ljava/lang/String;

    const-string v2, "card number 0"

    goto :goto_1
.end method

.method static synthetic a(Lcom/unionpay/b/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unionpay/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/unionpay/b/e;->c()V

    iget-boolean v0, p0, Lcom/unionpay/b/e;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "name"

    const-string v1, "seType"

    const-string v2, "errorCode"

    const-string v3, "errorDesp"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/unionpay/b/e;->b:Lcom/unionpay/UPQuerySEPayInfoCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unionpay/UPQuerySEPayInfoCallback;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/unionpay/b/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "tsm version code="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tsm-client"

    invoke-static {v2, p1}, Lcom/unionpay/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic b(Lcom/unionpay/b/e;)Lcom/unionpay/UPQuerySEPayInfoCallback;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/b/e;->b:Lcom/unionpay/UPQuerySEPayInfoCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/unionpay/b/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/b/e;->c:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/b/e;->j:Lcom/unionpay/tsmservice/mi/UPTsmAddon$UPTsmConnectionListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->removeConnectionListener(Lcom/unionpay/tsmservice/mi/UPTsmAddon$UPTsmConnectionListener;)V

    iget-object v0, p0, Lcom/unionpay/b/e;->c:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->unbind()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/unionpay/b/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget-object v0, p0, Lcom/unionpay/b/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/b/e;->b:Lcom/unionpay/UPQuerySEPayInfoCallback;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "com.unionpay.tsmservice.mi"

    invoke-direct {p0, v0}, Lcom/unionpay/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/unionpay/b/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->getInstance(Landroid/content/Context;)Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/b/e;->c:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    iget-object v1, p0, Lcom/unionpay/b/e;->j:Lcom/unionpay/tsmservice/mi/UPTsmAddon$UPTsmConnectionListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->addConnectionListener(Lcom/unionpay/tsmservice/mi/UPTsmAddon$UPTsmConnectionListener;)V

    const-string v0, "uppay-spay"

    const-string v1, "type se  bind service"

    invoke-static {v0, v1}, Lcom/unionpay/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/b/e;->c:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    const-string v1, "uppay"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bind service"

    invoke-static {v1, v0}, Lcom/unionpay/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/b/e;->c:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->bind()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/UPSEInfoResp;->ERROR_NONE:Ljava/lang/String;

    const-string v3, "Tsm service bind fail"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/b/e;->c:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "tsm service already connected"

    invoke-static {v1, v0}, Lcom/unionpay/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unionpay/b/e;->b()Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/unionpay/b/e;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unionpay/utils/b;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/UPSEInfoResp;->ERROR_TSM_UNINSTALLED:Ljava/lang/String;

    const-string v3, "Mi Tsm service apk is not installed"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/UPSEInfoResp;->ERROR_NOT_SUPPORT:Ljava/lang/String;

    const-string v3, "Mi Tsm service apk version is low"

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/unionpay/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    sget v0, Lcom/unionpay/UPSEInfoResp;->SUCCESS:I

    return v0

    :cond_5
    :goto_2
    sget v0, Lcom/unionpay/UPSEInfoResp;->PARAM_ERROR:I

    return v0
.end method

.method public final b()Z
    .locals 6

    const-string v0, "uppay"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getVendorPayStatus()"

    invoke-static {v0, v2}, Lcom/unionpay/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/unionpay/b/e;->g:Lcom/unionpay/tsmservice/mi/request/QueryVendorPayStatusRequestParams;

    if-nez v2, :cond_0

    new-instance v2, Lcom/unionpay/tsmservice/mi/request/QueryVendorPayStatusRequestParams;

    invoke-direct {v2}, Lcom/unionpay/tsmservice/mi/request/QueryVendorPayStatusRequestParams;-><init>()V

    iput-object v2, p0, Lcom/unionpay/b/e;->g:Lcom/unionpay/tsmservice/mi/request/QueryVendorPayStatusRequestParams;

    :cond_0
    iget-object v2, p0, Lcom/unionpay/b/e;->c:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    iget-object v3, p0, Lcom/unionpay/b/e;->g:Lcom/unionpay/tsmservice/mi/request/QueryVendorPayStatusRequestParams;

    new-instance v4, Lcom/unionpay/b/h;

    iget-object v5, p0, Lcom/unionpay/b/e;->i:Landroid/os/Handler;

    invoke-direct {v4, v5}, Lcom/unionpay/b/h;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->queryVendorPayStatus(Lcom/unionpay/tsmservice/mi/request/QueryVendorPayStatusRequestParams;Lcom/unionpay/tsmservice/mi/ITsmCallback;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ret != 0"

    invoke-static {v0, v2}, Lcom/unionpay/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/b/e;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/b/e;->e:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/UPSEInfoResp;->ERROR_NOT_SUPPORT:Ljava/lang/String;

    const-string v4, "Mi Tsm service apk version is low"

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/unionpay/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/unionpay/b/e;->i:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/b/e;->i:Landroid/os/Handler;

    const/4 v3, 0x4

    const/16 v4, 0xfa0

    const-string v5, ""

    invoke-static {v2, v3, v4, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method
