.class public final Lcom/pingplusplus/android/n/b;
.super Lcom/pingplusplus/android/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pingplusplus/android/n/b$b;,
        Lcom/pingplusplus/android/n/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000f\u0010B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005H\u0014J\u0008\u0010\u000e\u001a\u00020\u000cH\u0014R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/pingplusplus/android/wap/JDPayWebView;",
        "Lcom/pingplusplus/android/PingppWebView;",
        "activity",
        "Landroid/app/Activity;",
        "credential",
        "Lorg/json/JSONObject;",
        "(Landroid/app/Activity;Lorg/json/JSONObject;)V",
        "fail_url",
        "",
        "jdpayResultUrl",
        "jdpayResultUrl2",
        "initData",
        "",
        "chargeJson",
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

.field private final q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pingplusplus/android/n/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pingplusplus/android/n/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    const-string p1, "https://h5pay.jd.com/jdpay/payResult?"

    iput-object p1, p0, Lcom/pingplusplus/android/n/b;->q:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/pingplusplus/android/n/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pingplusplus/android/n/b;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic a(Lcom/pingplusplus/android/n/b;Lcom/pingplusplus/android/WebViewEx;)V
    .locals 0

    iput-object p1, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    return-void
.end method

.method public static final synthetic a(Lcom/pingplusplus/android/n/b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/pingplusplus/android/n/b;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pingplusplus/android/j;->k:Z

    return-void
.end method

.method public static final synthetic b(Lcom/pingplusplus/android/n/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pingplusplus/android/n/b;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lcom/pingplusplus/android/n/b;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pingplusplus/android/j;->j:Z

    return-void
.end method

.method public static final synthetic c(Lcom/pingplusplus/android/n/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pingplusplus/android/n/b;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lcom/pingplusplus/android/n/b;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 0

    iget-object p0, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object p0
.end method

.method public static final synthetic e(Lcom/pingplusplus/android/n/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pingplusplus/android/j;->h:Z

    return p0
.end method

.method public static final synthetic f(Lcom/pingplusplus/android/n/b;)Landroid/widget/ProgressBar;
    .locals 0

    invoke-virtual {p0}, Lcom/pingplusplus/android/j;->c()Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/pingplusplus/android/n/b;)Lcom/pingplusplus/android/WebViewEx;
    .locals 0

    iget-object p0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    return-object p0
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "chargeJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "success_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pingplusplus/android/n/b;->p:Ljava/lang/String;

    const-string v1, "fail_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/n/b;->r:Ljava/lang/String;

    const-string v0, "credential"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "jdpay_wap"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentActivity start jdpay_wap credential : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "https://m.jdpay.com/wepay/web/pay"

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "channelUrl"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    const-string v3, "="

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "fail"

    const-string v1, "invalid_credential"

    invoke-virtual {p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "&"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "orderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/pingplusplus/android/j;->a(Ljava/lang/String;[B)V

    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected f()V
    .locals 2

    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v1, Lcom/pingplusplus/android/n/b$b;

    invoke-direct {v1, p0}, Lcom/pingplusplus/android/n/b$b;-><init>(Lcom/pingplusplus/android/n/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
