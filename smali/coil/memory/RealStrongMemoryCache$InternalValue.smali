.class final Lcoil/memory/RealStrongMemoryCache$InternalValue;
.super Ljava/lang/Object;
.source "StrongMemoryCache.kt"

# interfaces
.implements Lcoil/memory/RealMemoryCache$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/memory/RealStrongMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalValue"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcoil/memory/RealStrongMemoryCache$InternalValue;",
        "Lcoil/memory/RealMemoryCache$Value;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "isSampled",
        "",
        "size",
        "",
        "(Landroid/graphics/Bitmap;ZI)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "()Z",
        "getSize",
        "()I",
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
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final isSampled:Z

.field private final size:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ZI)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->isSampled:Z

    iput p3, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->size:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 169
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 171
    iget v0, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->size:I

    return v0
.end method

.method public isSampled()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcoil/memory/RealStrongMemoryCache$InternalValue;->isSampled:Z

    return v0
.end method
