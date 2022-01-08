.class public interface abstract Lcoil/memory/WeakMemoryCache;
.super Ljava/lang/Object;
.source "WeakMemoryCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008`\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H&J(\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u000fH&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcoil/memory/WeakMemoryCache;",
        "",
        "clearMemory",
        "",
        "get",
        "Lcoil/memory/RealMemoryCache$Value;",
        "key",
        "Lcoil/memory/MemoryCache$Key;",
        "remove",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "set",
        "isSampled",
        "size",
        "",
        "trimMemory",
        "level",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract clearMemory()V
.end method

.method public abstract get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;
.end method

.method public abstract remove(Landroid/graphics/Bitmap;)Z
.end method

.method public abstract remove(Lcoil/memory/MemoryCache$Key;)Z
.end method

.method public abstract set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;ZI)V
.end method

.method public abstract trimMemory(I)V
.end method
