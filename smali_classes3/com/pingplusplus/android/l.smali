.class public final Lcom/pingplusplus/android/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;
.implements Lcom/pingplusplus/android/m;


# instance fields
.field private a:Lcom/pingplusplus/android/PaymentActivity;

.field private b:Lcom/pingplusplus/android/PaymentActivity;

.field private c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/PaymentActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "payActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pingplusplus/android/l;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/pingplusplus/android/l;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/l;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/l;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method public a(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/l;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "wxPayEnActivity not equals paymentActivity"

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pingplusplus/android/l;->b:Lcom/pingplusplus/android/PaymentActivity;

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "timeStamp"

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "appId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pingplusplus/android/l;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v2, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/pingplusplus/android/l;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v3, p0, Lcom/pingplusplus/android/l;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    new-instance v2, Lcom/tencent/mm/opensdk/modelpay/PayReq;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelpay/PayReq;-><init>()V

    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    const-string v1, "partnerId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    const-string v1, "prepayId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    const-string v1, "nonceStr"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    const-string v0, "packageValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    const-string v0, "sign"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;

    iget-object p1, p0, Lcom/pingplusplus/android/l;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {p1, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lcom/pingplusplus/android/l;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "fail"

    const-string v1, "invalid_credential"

    invoke-virtual {p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/l;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    return v0
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 1

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 2

    const-string v0, "resp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResp"

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentActivity wx result errCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , errStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pingplusplus/android/l;->a:Lcom/pingplusplus/android/PaymentActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResp wxPayStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pingplusplus/android/l;->a:Lcom/pingplusplus/android/PaymentActivity;

    iget v1, v1, Lcom/pingplusplus/android/PaymentActivity;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/pingplusplus/android/PingppObject;->Companion:Lcom/pingplusplus/android/PingppObject$a;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PingppObject$a;->a()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget p1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    iput p1, v0, Lcom/pingplusplus/android/PingppObject;->wxErrCode:I

    iget-object p1, p0, Lcom/pingplusplus/android/l;->b:Lcom/pingplusplus/android/PaymentActivity;

    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/pingplusplus/android/l;->b:Lcom/pingplusplus/android/PaymentActivity;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pingplusplus/android/l;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1}, Lcom/pingplusplus/android/PaymentActivity;->b()V

    :cond_2
    :goto_0
    return-void
.end method
