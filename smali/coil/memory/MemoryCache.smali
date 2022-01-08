.class public interface abstract Lcoil/memory/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/MemoryCache$Key;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001:\u0001\u0012J\u0008\u0010\u0008\u001a\u00020\tH&J\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u00a6\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rH&J\u0019\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000bH\u00a6\u0002R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcoil/memory/MemoryCache;",
        "",
        "maxSize",
        "",
        "getMaxSize",
        "()I",
        "size",
        "getSize",
        "clear",
        "",
        "get",
        "Landroid/graphics/Bitmap;",
        "key",
        "Lcoil/memory/MemoryCache$Key;",
        "remove",
        "",
        "set",
        "bitmap",
        "Key",
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
.method public abstract clear()V
.end method

.method public abstract get(Lcoil/memory/MemoryCache$Key;)Landroid/graphics/Bitmap;
.end method

.method public abstract getMaxSize()I
.end method

.method public abstract getSize()I
.end method

.method public abstract remove(Lcoil/memory/MemoryCache$Key;)Z
.end method

.method public abstract set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;)V
.end method
