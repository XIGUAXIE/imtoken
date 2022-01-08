.class public interface abstract Lcoil/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/ImageLoader$Builder;,
        Lcoil/ImageLoader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u00182\u00020\u0001:\u0002\u0017\u0018J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcoil/ImageLoader;",
        "",
        "bitmapPool",
        "Lcoil/bitmap/BitmapPool;",
        "getBitmapPool",
        "()Lcoil/bitmap/BitmapPool;",
        "defaults",
        "Lcoil/request/DefaultRequestOptions;",
        "getDefaults",
        "()Lcoil/request/DefaultRequestOptions;",
        "memoryCache",
        "Lcoil/memory/MemoryCache;",
        "getMemoryCache",
        "()Lcoil/memory/MemoryCache;",
        "enqueue",
        "Lcoil/request/Disposable;",
        "request",
        "Lcoil/request/ImageRequest;",
        "execute",
        "Lcoil/request/ImageResult;",
        "(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shutdown",
        "",
        "Builder",
        "Companion",
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
.field public static final Companion:Lcoil/ImageLoader$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcoil/ImageLoader$Companion;->$$INSTANCE:Lcoil/ImageLoader$Companion;

    sput-object v0, Lcoil/ImageLoader;->Companion:Lcoil/ImageLoader$Companion;

    return-void
.end method


# virtual methods
.method public abstract enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;
.end method

.method public abstract execute(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/request/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getBitmapPool()Lcoil/bitmap/BitmapPool;
.end method

.method public abstract getDefaults()Lcoil/request/DefaultRequestOptions;
.end method

.method public abstract getMemoryCache()Lcoil/memory/MemoryCache;
.end method

.method public abstract shutdown()V
.end method
