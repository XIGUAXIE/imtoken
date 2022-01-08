.class public interface abstract Lcoil/EventListener;
.super Ljava/lang/Object;
.source "EventListener.kt"

# interfaces
.implements Lcoil/request/ImageRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/EventListener$Factory;,
        Lcoil/EventListener$DefaultImpls;,
        Lcoil/EventListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u0000 (2\u00020\u0001:\u0002()J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0017J \u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0017J,\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000f2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0010H\u0017J$\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000f2\u0006\u0010\u0008\u001a\u00020\tH\u0017J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J\u0018\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0014H\u0017J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0017J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001eH\u0017J\u0018\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010 \u001a\u00020!H\u0017J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017J\u0018\u0010#\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020$H\u0017J\u0018\u0010%\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020$H\u0017J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017J\u0010\u0010\'\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017\u00a8\u0006*"
    }
    d2 = {
        "Lcoil/EventListener;",
        "Lcoil/request/ImageRequest$Listener;",
        "decodeEnd",
        "",
        "request",
        "Lcoil/request/ImageRequest;",
        "decoder",
        "Lcoil/decode/Decoder;",
        "options",
        "Lcoil/decode/Options;",
        "result",
        "Lcoil/decode/DecodeResult;",
        "decodeStart",
        "fetchEnd",
        "fetcher",
        "Lcoil/fetch/Fetcher;",
        "Lcoil/fetch/FetchResult;",
        "fetchStart",
        "mapEnd",
        "output",
        "",
        "mapStart",
        "input",
        "onCancel",
        "onError",
        "throwable",
        "",
        "onStart",
        "onSuccess",
        "metadata",
        "Lcoil/request/ImageResult$Metadata;",
        "resolveSizeEnd",
        "size",
        "Lcoil/size/Size;",
        "resolveSizeStart",
        "transformEnd",
        "Landroid/graphics/Bitmap;",
        "transformStart",
        "transitionEnd",
        "transitionStart",
        "Companion",
        "Factory",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/EventListener$Companion;

.field public static final NONE:Lcoil/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/EventListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/EventListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/EventListener;->Companion:Lcoil/EventListener$Companion;

    .line 187
    new-instance v0, Lcoil/EventListener$Companion$NONE$1;

    invoke-direct {v0}, Lcoil/EventListener$Companion$NONE$1;-><init>()V

    check-cast v0, Lcoil/EventListener;

    sput-object v0, Lcoil/EventListener;->NONE:Lcoil/EventListener;

    return-void
.end method


# virtual methods
.method public abstract decodeEnd(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;Lcoil/decode/DecodeResult;)V
.end method

.method public abstract decodeStart(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;)V
.end method

.method public abstract fetchEnd(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;Lcoil/fetch/FetchResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "Lcoil/fetch/Fetcher<",
            "*>;",
            "Lcoil/decode/Options;",
            "Lcoil/fetch/FetchResult;",
            ")V"
        }
    .end annotation
.end method

.method public abstract fetchStart(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "Lcoil/fetch/Fetcher<",
            "*>;",
            "Lcoil/decode/Options;",
            ")V"
        }
    .end annotation
.end method

.method public abstract mapEnd(Lcoil/request/ImageRequest;Ljava/lang/Object;)V
.end method

.method public abstract mapStart(Lcoil/request/ImageRequest;Ljava/lang/Object;)V
.end method

.method public abstract onCancel(Lcoil/request/ImageRequest;)V
.end method

.method public abstract onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V
.end method

.method public abstract onStart(Lcoil/request/ImageRequest;)V
.end method

.method public abstract onSuccess(Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V
.end method

.method public abstract resolveSizeEnd(Lcoil/request/ImageRequest;Lcoil/size/Size;)V
.end method

.method public abstract resolveSizeStart(Lcoil/request/ImageRequest;)V
.end method

.method public abstract transformEnd(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V
.end method

.method public abstract transformStart(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V
.end method

.method public abstract transitionEnd(Lcoil/request/ImageRequest;)V
.end method

.method public abstract transitionStart(Lcoil/request/ImageRequest;)V
.end method
