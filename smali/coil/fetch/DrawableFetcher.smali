.class public final Lcoil/fetch/DrawableFetcher;
.super Ljava/lang/Object;
.source "DrawableFetcher.kt"

# interfaces
.implements Lcoil/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil/fetch/Fetcher<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawableFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawableFetcher.kt\ncoil/fetch/DrawableFetcher\n+ 2 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 3 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,40:1\n48#2:41\n26#3:42\n*E\n*S KotlinDebug\n*F\n+ 1 DrawableFetcher.kt\ncoil/fetch/DrawableFetcher\n*L\n31#1:41\n31#1:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J1\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\n\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcoil/fetch/DrawableFetcher;",
        "Lcoil/fetch/Fetcher;",
        "Landroid/graphics/drawable/Drawable;",
        "drawableDecoder",
        "Lcoil/decode/DrawableDecoderService;",
        "(Lcoil/decode/DrawableDecoderService;)V",
        "fetch",
        "Lcoil/fetch/FetchResult;",
        "pool",
        "Lcoil/bitmap/BitmapPool;",
        "data",
        "size",
        "Lcoil/size/Size;",
        "options",
        "Lcoil/decode/Options;",
        "(Lcoil/bitmap/BitmapPool;Landroid/graphics/drawable/Drawable;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "key",
        "",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final drawableDecoder:Lcoil/decode/DrawableDecoderService;


# direct methods
.method public constructor <init>(Lcoil/decode/DrawableDecoderService;)V
    .locals 1

    const-string v0, "drawableDecoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/fetch/DrawableFetcher;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    return-void
.end method


# virtual methods
.method public fetch(Lcoil/bitmap/BitmapPool;Landroid/graphics/drawable/Drawable;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/bitmap/BitmapPool;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcoil/size/Size;",
            "Lcoil/decode/Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/fetch/FetchResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 22
    invoke-static {p2}, Lcoil/util/-Extensions;->isVector(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    .line 23
    new-instance p5, Lcoil/fetch/DrawableResult;

    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lcoil/fetch/DrawableFetcher;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    .line 27
    invoke-virtual {p4}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 29
    invoke-virtual {p4}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v4

    .line 30
    invoke-virtual {p4}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v5

    move-object v1, p2

    move-object v3, p3

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 31
    invoke-virtual {p4}, Lcoil/decode/Options;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 41
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string p4, "context.resources"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p4, p3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 41
    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 36
    :cond_0
    sget-object p3, Lcoil/decode/DataSource;->MEMORY:Lcoil/decode/DataSource;

    .line 23
    invoke-direct {p5, p2, p1, p3}, Lcoil/fetch/DrawableResult;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V

    return-object p5
.end method

.method public bridge synthetic fetch(Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcoil/fetch/DrawableFetcher;->fetch(Lcoil/bitmap/BitmapPool;Landroid/graphics/drawable/Drawable;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lcoil/fetch/Fetcher$DefaultImpls;->handles(Lcoil/fetch/Fetcher;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcoil/fetch/DrawableFetcher;->handles(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method

.method public key(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic key(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 12
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcoil/fetch/DrawableFetcher;->key(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
