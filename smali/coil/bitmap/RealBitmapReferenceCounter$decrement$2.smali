.class final Lcoil/bitmap/RealBitmapReferenceCounter$decrement$2;
.super Ljava/lang/Object;
.source "BitmapReferenceCounter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/bitmap/RealBitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcoil/bitmap/RealBitmapReferenceCounter;


# direct methods
.method constructor <init>(Lcoil/bitmap/RealBitmapReferenceCounter;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter$decrement$2;->this$0:Lcoil/bitmap/RealBitmapReferenceCounter;

    iput-object p2, p0, Lcoil/bitmap/RealBitmapReferenceCounter$decrement$2;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter$decrement$2;->this$0:Lcoil/bitmap/RealBitmapReferenceCounter;

    invoke-static {v0}, Lcoil/bitmap/RealBitmapReferenceCounter;->access$getBitmapPool$p(Lcoil/bitmap/RealBitmapReferenceCounter;)Lcoil/bitmap/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcoil/bitmap/RealBitmapReferenceCounter$decrement$2;->$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcoil/bitmap/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    return-void
.end method
