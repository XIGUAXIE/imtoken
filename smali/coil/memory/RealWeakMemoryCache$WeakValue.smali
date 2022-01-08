.class public final Lcoil/memory/RealWeakMemoryCache$WeakValue;
.super Ljava/lang/Object;
.source "WeakMemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/memory/RealWeakMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeakValue"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0001\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcoil/memory/RealWeakMemoryCache$WeakValue;",
        "",
        "identityHashCode",
        "",
        "bitmap",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/graphics/Bitmap;",
        "isSampled",
        "",
        "size",
        "(ILjava/lang/ref/WeakReference;ZI)V",
        "getBitmap",
        "()Ljava/lang/ref/WeakReference;",
        "getIdentityHashCode",
        "()I",
        "()Z",
        "getSize",
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
.field private final bitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final identityHashCode:I

.field private final isSampled:Z

.field private final size:I


# direct methods
.method public constructor <init>(ILjava/lang/ref/WeakReference;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;ZI)V"
        }
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->identityHashCode:I

    iput-object p2, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->bitmap:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->isSampled:Z

    iput p4, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->size:I

    return-void
.end method


# virtual methods
.method public final getBitmap()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->bitmap:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getIdentityHashCode()I
    .locals 1

    .line 187
    iget v0, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->identityHashCode:I

    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 190
    iget v0, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->size:I

    return v0
.end method

.method public final isSampled()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcoil/memory/RealWeakMemoryCache$WeakValue;->isSampled:Z

    return v0
.end method
