.class public final Lcom/pingplusplus/android/n/a;
.super Lcom/pingplusplus/android/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pingplusplus/android/n/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u000eB\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H\u0014J\u0008\u0010\r\u001a\u00020\u000cH\u0014R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/pingplusplus/android/wap/BfbWebView;",
        "Lcom/pingplusplus/android/PingppWebView;",
        "activity",
        "Landroid/app/Activity;",
        "chargeJson",
        "Lorg/json/JSONObject;",
        "(Landroid/app/Activity;Lorg/json/JSONObject;)V",
        "bfbResultUrl",
        "",
        "isFirstLoad",
        "",
        "initData",
        "",
        "initWebView",
        "WebViewClientExInner",
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

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/pingplusplus/android/j;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/pingplusplus/android/n/a;->q:Z

    return-void
.end method

.method public static final synthetic a(Lcom/pingplusplus/android/n/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pingplusplus/android/n/a;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic a(Lcom/pingplusplus/android/n/a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/pingplusplus/android/n/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pingplusplus/android/n/a;->q:Z

    return-void
.end method

.method public static final synthetic b(Lcom/pingplusplus/android/n/a;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 0

    iget-object p0, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object p0
.end method

.method public static final synthetic b(Lcom/pingplusplus/android/n/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pingplusplus/android/j;->j:Z

    return-void
.end method

.method public static final synthetic c(Lcom/pingplusplus/android/n/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pingplusplus/android/j;->h:Z

    return p0
.end method

.method public static final synthetic d(Lcom/pingplusplus/android/n/a;)Landroid/widget/ProgressBar;
    .locals 0

    invoke-virtual {p0}, Lcom/pingplusplus/android/j;->c()Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/pingplusplus/android/n/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pingplusplus/android/j;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic f(Lcom/pingplusplus/android/n/a;)Lcom/pingplusplus/android/WebViewEx;
    .locals 0

    iget-object p0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    return-object p0
.end method

.method public static final synthetic g(Lcom/pingplusplus/android/n/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pingplusplus/android/n/a;->q:Z

    return p0
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "chargeJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/n/a;->p:Ljava/lang/String;

    const-string v0, "credential"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "bfb_wap"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "="

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "fail"

    const-string v1, "invalid_credential"

    invoke-virtual {p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "&"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pingplusplus/android/j;->c:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "file:///android_asset/pingpp_web.html"

    invoke-virtual {p0, v0, p1}, Lcom/pingplusplus/android/j;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method protected f()V
    .locals 2

    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v1, Lcom/pingplusplus/android/n/a$a;

    invoke-direct {v1, p0}, Lcom/pingplusplus/android/n/a$a;-><init>(Lcom/pingplusplus/android/n/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
