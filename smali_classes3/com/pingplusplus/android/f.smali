.class public final Lcom/pingplusplus/android/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;
.implements Lcom/pingplusplus/android/g;


# instance fields
.field private final a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

.field private b:Lcom/pingplusplus/android/PaymentActivity;

.field private c:Lcom/pingplusplus/android/PaymentActivity;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pingplusplus/android/f;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/pingplusplus/android/f;->d:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/tencent/mobileqq/openpay/api/OpenApiFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object p2

    const-string v0, "OpenApiFactory.getInstan\u2026pplicationContext, appId)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/pingplusplus/android/f;->a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    instance-of p2, p1, Lcom/pingplusplus/android/PaymentActivity;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/pingplusplus/android/PaymentActivity;

    iput-object p1, p0, Lcom/pingplusplus/android/f;->b:Lcom/pingplusplus/android/PaymentActivity;

    :cond_0
    return-void
.end method

.method private final c()Ljava/lang/String;
    .locals 6

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Locale.ENGLISH"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/pingplusplus/android/i;->b:Lcom/pingplusplus/android/i$a;

    const/16 v4, 0x3e8

    const/16 v5, 0x270f

    invoke-virtual {v3, v4, v5}, Lcom/pingplusplus/android/i$a;->a(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/f;->a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)Z

    return-void
.end method

.method public a(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 1

    const-string v0, "payActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pingplusplus/android/f;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "payActivity not equals paymentActivity"

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pingplusplus/android/f;->c:Lcom/pingplusplus/android/PaymentActivity;

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "credentialData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;

    invoke-direct {v0}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;-><init>()V

    invoke-direct {p0}, Lcom/pingplusplus/android/f;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->serialNumber:Ljava/lang/String;

    sget-object v1, Lcom/pingplusplus/android/PingppObject;->Companion:Lcom/pingplusplus/android/PingppObject$a;

    invoke-virtual {v1}, Lcom/pingplusplus/android/PingppObject$a;->a()Lcom/pingplusplus/android/PingppObject;

    move-result-object v1

    iget-object v1, v1, Lcom/pingplusplus/android/PingppObject;->qpayScheme:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qwallet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pingplusplus/android/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/pingplusplus/android/PingppObject;->Companion:Lcom/pingplusplus/android/PingppObject$a;

    invoke-virtual {v1}, Lcom/pingplusplus/android/PingppObject$a;->a()Lcom/pingplusplus/android/PingppObject;

    move-result-object v1

    iget-object v1, v1, Lcom/pingplusplus/android/PingppObject;->qpayScheme:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->callbackScheme:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAcc:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAccHint:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->timeStamp:J

    const-string v1, "HMAC-SHA1"

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sigType:Ljava/lang/String;

    const-string v1, "bargainor_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->bargainorId:Ljava/lang/String;

    iget-object v1, p0, Lcom/pingplusplus/android/f;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->appId:Ljava/lang/String;

    const-string v1, "nonce"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->nonce:Ljava/lang/String;

    const-string v1, "sign"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sig:Ljava/lang/String;

    const-string v1, "token_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->tokenId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->checkParams()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pingplusplus/android/f;->a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {p1, v0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->execApi(Lcom/tencent/mobileqq/openpay/data/base/BaseApi;)Z

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/f;->a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQInstalled()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/pingplusplus/android/f;->a:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    const-string v1, "pay"

    invoke-interface {v0, v1}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQSupportApi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onOpenResponse(Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;)V
    .locals 6

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " apiName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " serialnumber:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    check-cast v2, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;

    iget-object v3, v2, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isSucess:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " retCode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " retMsg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v3

    iget-object v4, p1, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retMsg:Ljava/lang/String;

    const-string v5, "payResponse.retMsg"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    invoke-virtual {v2}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isPayByWeChat()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " transactionId:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->transactionId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " payTime:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->payTime:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " callbackUrl:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->callbackUrl:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " totalFee:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->totalFee:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " spData:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->spData:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v4, ""

    const-string v0, "response is not PayResponse."

    const/4 p1, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pingplusplus/android/f;->b:Lcom/pingplusplus/android/PaymentActivity;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iput v1, v0, Lcom/pingplusplus/android/PaymentActivity;->c:I

    sget-object v0, Lcom/pingplusplus/android/PingppObject;->Companion:Lcom/pingplusplus/android/PingppObject$a;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PingppObject$a;->a()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iput p1, v0, Lcom/pingplusplus/android/PingppObject;->qpayErrCode:I

    iget-object v0, p0, Lcom/pingplusplus/android/f;->c:Lcom/pingplusplus/android/PaymentActivity;

    if-eqz v0, :cond_4

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/pingplusplus/android/f;->c:Lcom/pingplusplus/android/PaymentActivity;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/pingplusplus/android/f;->b:Lcom/pingplusplus/android/PaymentActivity;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v0, v3, v4, p1}, Lcom/pingplusplus/android/PaymentActivity;->a(ZLjava/lang/String;I)V

    :goto_1
    return-void
.end method
