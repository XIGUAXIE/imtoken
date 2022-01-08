.class public final Lcom/pingplusplus/android/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pingplusplus/android/c;
.implements Lcmbapi/CMBEventHandler;


# instance fields
.field private a:Lcom/pingplusplus/android/PaymentActivity;

.field private b:Lcmbapi/CMBApi;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 1

    const-string v0, "payActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pingplusplus/android/b;->a:Lcom/pingplusplus/android/PaymentActivity;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {}, Lcmbapi/CMBApiFactory;->destroyCMBAPI()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "credentialData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid_credential"

    const-string v2, "fail"

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/pingplusplus/android/b;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "\u5b57\u6bb5 channelVersion \u4e0d\u5b58\u5728"

    invoke-virtual {p1, v2, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "2.0"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/pingplusplus/android/b;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "\u4ec5\u652f\u6301\u62db\u884c 2.0 \u7248\u672c"

    invoke-virtual {p1, v2, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "jsonRequestData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "reqData"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/json/JSONObject;

    if-nez v5, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "branchNo"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "merchantNo"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/b;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {v1, v0}, Lcmbapi/CMBApiFactory;->createCMBAPI(Landroid/app/Activity;Ljava/lang/String;)Lcmbapi/CMBApi;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/b;->b:Lcmbapi/CMBApi;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "charset=utf-8&jsonRequestData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "utf-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcmbapi/CMBRequest;

    invoke-direct {p1}, Lcmbapi/CMBRequest;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcmbapi/CMBRequest;->requestData:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pingpp.cmbPayMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pingplusplus/android/Pingpp;->cmbPayMethod:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; .method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pingplusplus/android/Pingpp;->cmbPayMethod:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    invoke-virtual {v1}, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->getMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/pingplusplus/android/Pingpp;->cmbPayMethod:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    invoke-virtual {v0}, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->getMethod()I

    move-result v0

    sget-object v1, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->APP_ONLY:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    invoke-virtual {v1}, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->getMethod()I

    move-result v1

    and-int/2addr v0, v1

    sget-object v1, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->APP_ONLY:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    invoke-virtual {v1}, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->getMethod()I

    move-result v1

    if-ne v0, v1, :cond_4

    const-string v0, "cmbmobilebank://CMBLS/FunctionJump?action=gofuncid&funcid=200013&serverid=CMBEUserPay&requesttype=post&cmb_app_trans_parms_start=here"

    iput-object v0, p1, Lcmbapi/CMBRequest;->CMBJumpAppUrl:Ljava/lang/String;

    :cond_4
    sget-object v0, Lcom/pingplusplus/android/Pingpp;->cmbPayMethod:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    invoke-virtual {v0}, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->getMethod()I

    move-result v0

    sget-object v1, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->H5_ONLY:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    invoke-virtual {v1}, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->getMethod()I

    move-result v1

    and-int/2addr v0, v1

    sget-object v1, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->H5_ONLY:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    invoke-virtual {v1}, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->getMethod()I

    move-result v1

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/pingplusplus/android/Pingpp;->INSTANCE:Lcom/pingplusplus/android/Pingpp;

    invoke-virtual {v0}, Lcom/pingplusplus/android/Pingpp;->getCmbEnvTest()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https://netpay.cmbchina.com/netpayment/BaseHttp.dll?H5PayJsonSDK"

    :goto_0
    iput-object v0, p1, Lcmbapi/CMBRequest;->CMBH5Url:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/pingplusplus/android/Pingpp;->INSTANCE:Lcom/pingplusplus/android/Pingpp;

    invoke-virtual {v0}, Lcom/pingplusplus/android/Pingpp;->getCmbEnvTestUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "http://121.15.180.66:801/netpayment/BaseHttp.dll?H5PayJsonSDK"

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/pingplusplus/android/Pingpp;->INSTANCE:Lcom/pingplusplus/android/Pingpp;

    invoke-virtual {v0}, Lcom/pingplusplus/android/Pingpp;->getCmbEnvTestUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iput-boolean v3, p1, Lcmbapi/CMBRequest;->isShowNavigationBar:Z

    :cond_7
    const-string v0, "pay"

    iput-object v0, p1, Lcmbapi/CMBRequest;->method:Ljava/lang/String;

    iget-object v0, p0, Lcom/pingplusplus/android/b;->b:Lcmbapi/CMBApi;

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-interface {v0, p1}, Lcmbapi/CMBApi;->sendReq(Lcmbapi/CMBRequest;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMBApi.sendReq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/pingplusplus/android/b;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "jsonRequestData[reqData] \u4e0d\u5305\u542b branchNo \u6216 merchantNo \u5b57\u6bb5"

    invoke-virtual {p1, v2, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/pingplusplus/android/b;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "jsonRequestData[reqData] \u4e0d\u5b58\u5728\u6216\u4e0d\u662f key-value \u952e\u503c\u5bf9"

    invoke-virtual {p1, v2, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    iget-object p1, p0, Lcom/pingplusplus/android/b;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "jsonRequestData \u4e0d\u662f JSON \u5b57\u7b26\u4e32"

    invoke-virtual {p1, v2, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/pingplusplus/android/b;->b:Lcmbapi/CMBApi;

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {v1, p1, p0}, Lcmbapi/CMBApi;->handleIntent(Landroid/content/Intent;Lcmbapi/CMBEventHandler;)Z

    move-result p1

    return p1
.end method

.method public onResp(Lcmbapi/CMBResponse;)V
    .locals 3

    const-string v0, "resp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p1, Lcmbapi/CMBResponse;->respCode:I

    const-string v2, "respCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p1, Lcmbapi/CMBResponse;->respMsg:Ljava/lang/String;

    const-string v2, "respMsg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extraMsgObj.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lcmbapi/CMBResponse;->respCode:I

    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pingplusplus/android/b;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "success"

    const-string v2, ""

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/pingplusplus/android/b;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "channel_returns_fail"

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/pingplusplus/android/b;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "unknown"

    invoke-virtual {p1, v1, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/pingplusplus/android/b;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "cancel"

    const-string v2, "user_cancelled"

    :goto_1
    invoke-virtual {p1, v1, v2, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
