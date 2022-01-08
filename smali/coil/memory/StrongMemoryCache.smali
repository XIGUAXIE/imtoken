.class public interface abstract Lcoil/memory/StrongMemoryCache;
.super Ljava/lang/Object;
.source "StrongMemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/StrongMemoryCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008`\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016J\u0008\u0010\u0008\u001a\u00020\tH&J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rH&J \u0010\u0010\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000fH&J\u0010\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcoil/memory/StrongMemoryCache;",
        "",
        "maxSize",
        "",
        "getMaxSize",
        "()I",
        "size",
        "getSize",
        "clearMemory",
        "",
        "get",
        "Lcoil/memory/RealMemoryCache$Value;",
        "key",
        "Lcoil/memory/MemoryCache$Key;",
        "remove",
        "",
        "set",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "isSampled",
        "trimMemory",
        "level",
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
.field public static final Companion:Lcoil/memory/StrongMemoryCache$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcoil/memory/StrongMemoryCache$Companion;->$$INSTANCE:Lcoil/memory/StrongMemoryCache$Companion;

    sput-object v0, Lcoil/memory/StrongMemoryCache;->Companion:Lcoil/memory/StrongMemoryCache$Companion;

    return-void
.end method


# virtual methods
.method public abstract clearMemory()V
.end method

.method public abstract get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;
.end method

.method public abstract getMaxSize()I
.end method

.method public abstract getSize()I
.end method

.method public abstract remove(Lcoil/memory/MemoryCache$Key;)Z
.end method

.method public abstract set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Z)V
.end method

.method public abstract trimMemory(I)V
.end method
