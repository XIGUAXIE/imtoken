.class public final Lcoil/memory/InvalidatableEmptyTargetDelegate;
.super Lcoil/memory/TargetDelegate;
.source "TargetDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTargetDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TargetDelegate.kt\ncoil/memory/InvalidatableEmptyTargetDelegate\n+ 2 Extensions.kt\ncoil/util/-Extensions\n*L\n1#1,205:1\n199#2,2:206\n*E\n*S KotlinDebug\n*F\n+ 1 TargetDelegate.kt\ncoil/memory/InvalidatableEmptyTargetDelegate\n*L\n66#1,2:206\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\n"
    }
    d2 = {
        "Lcoil/memory/InvalidatableEmptyTargetDelegate;",
        "Lcoil/memory/TargetDelegate;",
        "referenceCounter",
        "Lcoil/bitmap/BitmapReferenceCounter;",
        "(Lcoil/bitmap/BitmapReferenceCounter;)V",
        "success",
        "",
        "result",
        "Lcoil/request/SuccessResult;",
        "(Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;


# direct methods
.method public constructor <init>(Lcoil/bitmap/BitmapReferenceCounter;)V
    .locals 1

    const-string/jumbo v0, "referenceCounter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lcoil/memory/TargetDelegate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcoil/memory/InvalidatableEmptyTargetDelegate;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    return-void
.end method


# virtual methods
.method public success(Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/SuccessResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 66
    iget-object p2, p0, Lcoil/memory/InvalidatableEmptyTargetDelegate;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    check-cast p1, Lcoil/request/ImageResult;

    invoke-static {p1}, Lcoil/memory/TargetDelegateKt;->access$getBitmap$p(Lcoil/request/ImageResult;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 206
    invoke-interface {p2, p1, v0}, Lcoil/bitmap/BitmapReferenceCounter;->setValid(Landroid/graphics/Bitmap;Z)V

    .line 67
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
