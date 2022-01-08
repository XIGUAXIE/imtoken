.class public final Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u00010B\u001b\u0012\u0006\u0010C\u001a\u00020B\u0012\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010D\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\nJ\u0017\u0010\r\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0005J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J=\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u00192\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00030\u001b2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00030\u001b\u00a2\u0006\u0004\u0008\u0004\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\"\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00030\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u001d\u0010/\u001a\u00020+8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010,\u001a\u0004\u0008-\u0010.R\u0016\u00102\u001a\u00020\u001c8\u0002@\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00080\u00101R\"\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00030\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010)R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u00108\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u001d\u0010=\u001a\u0002098B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010,\u001a\u0004\u0008;\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u00101R\u0016\u0010A\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u00107\u00a8\u0006H"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;",
        "Landroid/webkit/WebView;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "",
        "a",
        "()V",
        "Landroid/content/res/Resources;",
        "resources",
        "Landroid/webkit/WebSettings;",
        "settings",
        "(Landroid/content/res/Resources;Landroid/webkit/WebSettings;)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "destroy",
        "Landroid/view/MotionEvent;",
        "ev",
        "",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Landroid/webkit/WebViewClient;",
        "client",
        "setupWebSettings",
        "(Landroid/webkit/WebViewClient;)V",
        "Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;",
        "articleApi",
        "Lkotlin/Function1;",
        "",
        "linkClick",
        "loadingCallback",
        "(Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "Landroid/graphics/Bitmap;",
        "d",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "Ljava/lang/Runnable;",
        "j",
        "Ljava/lang/Runnable;",
        "mNotifyPageRenderedInHardwareLayer",
        "i",
        "Lkotlin/jvm/functions/Function1;",
        "loading",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "Lkotlin/Lazy;",
        "getBeaconStringResolver",
        "()Lcom/helpscout/beacon/internal/presentation/common/d;",
        "beaconStringResolver",
        "c",
        "Ljava/lang/String;",
        "baseUrlForCookieCompliance",
        "h",
        "e",
        "Landroid/graphics/Canvas;",
        "k",
        "Z",
        "visible",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/e;",
        "b",
        "getArticleBuilder",
        "()Lcom/helpscout/beacon/internal/presentation/ui/article/e;",
        "articleBuilder",
        "g",
        "currentUrl",
        "f",
        "useSoftwareLayer",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Canvas;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Runnable;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$a;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->a:Lkotlin/Lazy;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$b;

    invoke-direct {p2, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$b;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->b:Lkotlin/Lazy;

    const-string p1, "https://docs.helpscout.net"

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->c:Ljava/lang/String;

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$d;

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->h:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$e;

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->i:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$f;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->j:Ljava/lang/Runnable;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$c;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;)V

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->setupWebSettings(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final a()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->e:Landroid/graphics/Canvas;

    :cond_0
    return-void
.end method

.method private final a(Landroid/content/res/Resources;Landroid/webkit/WebSettings;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    sget v1, Lcom/helpscout/beacon/ui/R$integer;->hs_beacon_conversation_desired_font_size_px:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sget v2, Lcom/helpscout/beacon/ui/R$integer;->hs_beacon_conversation_unstyled_font_size_px:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v2

    mul-int v2, v2, v1

    div-int/2addr v2, p1

    int-to-float p1, v2

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->a()V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->f:Z

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->h:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->i:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final getArticleBuilder()Lcom/helpscout/beacon/internal/presentation/ui/article/e;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/article/e;

    return-object v0
.end method

.method private final getBeaconStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "articleApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->h:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->i:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->getArticleBuilder()Lcom/helpscout/beacon/internal/presentation/ui/article/e;

    move-result-object p2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->getBeaconStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/presentation/common/d;->S0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/e;->a(Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->a()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->d:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->d:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->d:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->e:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->d:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->e:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->f:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->e:Landroid/graphics/Canvas;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->e:Landroid/graphics/Canvas;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->e:Landroid/graphics/Canvas;

    invoke-super {p0, v3}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->e:Landroid/graphics/Canvas;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->d:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setupWebSettings(Landroid/webkit/WebViewClient;)V
    .locals 5

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/16 v4, 0x15

    if-lt v2, v4, :cond_0

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_1
    const-string v1, "settings.apply {\n       \u2026E\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleWebView;->a(Landroid/content/res/Resources;Landroid/webkit/WebSettings;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
