.class public final Lcoil/bitmap/RealBitmapReferenceCounter$Value;
.super Ljava/lang/Object;
.source "BitmapReferenceCounter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/bitmap/RealBitmapReferenceCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0001\u0018\u00002\u00020\u0001B#\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcoil/bitmap/RealBitmapReferenceCounter$Value;",
        "",
        "bitmap",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/graphics/Bitmap;",
        "count",
        "",
        "isValid",
        "",
        "(Ljava/lang/ref/WeakReference;IZ)V",
        "getBitmap",
        "()Ljava/lang/ref/WeakReference;",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "()Z",
        "setValid",
        "(Z)V",
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

.field private count:I

.field private isValid:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;IZ)V"
        }
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->bitmap:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->count:I

    iput-boolean p3, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->isValid:Z

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

    .line 148
    iget-object v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->bitmap:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 149
    iget v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->count:I

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->isValid:Z

    return v0
.end method

.method public final setCount(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->count:I

    return-void
.end method

.method public final setValid(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->isValid:Z

    return-void
.end method
