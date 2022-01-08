.class public final Lcom/pingplusplus/android/n/c;
.super Lcom/pingplusplus/android/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pingplusplus/android/n/c$b;,
        Lcom/pingplusplus/android/n/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000c2\u00020\u0001:\u0002\u000c\rB\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0014J\u0008\u0010\u000b\u001a\u00020\nH\u0014R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/pingplusplus/android/wap/YeepayWebView;",
        "Lcom/pingplusplus/android/PingppWebView;",
        "activity",
        "Landroid/app/Activity;",
        "chargeJson",
        "Lorg/json/JSONObject;",
        "(Landroid/app/Activity;Lorg/json/JSONObject;)V",
        "yeepayResultUrl",
        "",
        "initData",
        "",
        "initWebView",
        "Companion",
        "WebViewClientInner",
        "pingpp-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pingplusplus/android/n/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pingplusplus/android/n/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/pingplusplus/android/j;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic a(Lcom/pingplusplus/android/n/c;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 0

    iget-object p0, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object p0
.end method

.method public static final synthetic a(Lcom/pingplusplus/android/n/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pingplusplus/android/j;->j:Z

    return-void
.end method

.method public static final synthetic b(Lcom/pingplusplus/android/n/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pingplusplus/android/j;->h:Z

    return p0
.end method

.method public static final synthetic c(Lcom/pingplusplus/android/n/c;)Landroid/widget/ProgressBar;
    .locals 0

    invoke-virtual {p0}, Lcom/pingplusplus/android/j;->c()Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/pingplusplus/android/n/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pingplusplus/android/n/c;->p:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "UTF-8"

    const-string v1, "chargeJson"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "result_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pingplusplus/android/n/c;->p:Ljava/lang/String;

    const-string v1, "credential"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "yeepay_wap"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentActivity start yeepay_wap credential : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    const-string p1, "merchantaccount"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "encryptkey"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v2

    :goto_1
    const-string v4, "mode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "live"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://ok.yeepay.com/paymobile/api/pay/request?merchantaccount=%s&encryptkey=%s&data=%s"

    goto :goto_2

    :cond_0
    const-string v1, "http://mobiletest.yeepay.com/paymobile/api/pay/request?merchantaccount=%s&encryptkey=%s&data=%s"

    :goto_2
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object v3, v5, p1

    const/4 p1, 0x2

    aput-object v0, v5, p1

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/pingplusplus/android/j;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method protected f()V
    .locals 2

    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v1, Lcom/pingplusplus/android/n/c$b;

    invoke-direct {v1, p0}, Lcom/pingplusplus/android/n/c$b;-><init>(Lcom/pingplusplus/android/n/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
