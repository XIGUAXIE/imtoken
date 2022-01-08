.class public final Lcoil/memory/RealStrongMemoryCache$cache$1;
.super Landroidx/collection/LruCache;
.source "StrongMemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/memory/RealStrongMemoryCache;-><init>(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;ILcoil/util/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Lcoil/memory/MemoryCache$Key;",
        "Lcoil/memory/RealStrongMemoryCache$InternalValue;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J*\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003H\u0014J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0003H\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "coil/memory/RealStrongMemoryCache$cache$1",
        "Landroidx/collection/LruCache;",
        "Lcoil/memory/MemoryCache$Key;",
        "Lcoil/memory/RealStrongMemoryCache$InternalValue;",
        "entryRemoved",
        "",
        "evicted",
        "",
        "key",
        "oldValue",
        "newValue",
        "sizeOf",
        "",
        "value",
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
.field final synthetic $maxSize:I

.field final synthetic this$0:Lcoil/memory/RealStrongMemoryCache;


# direct methods
.method constructor <init>(Lcoil/memory/RealStrongMemoryCache;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcoil/memory/RealStrongMemoryCache$cache$1;->this$0:Lcoil/memory/RealStrongMemoryCache;

    iput p2, p0, Lcoil/memory/RealStrongMemoryCache$cache$1;->$maxSize:I

    invoke-direct {p0, p3}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLcoil/memory/MemoryCache$Key;Lcoil/memory/RealStrongMemoryCache$InternalValue;Lcoil/memory/RealStrongMemoryCache$InternalValue;)V
    .locals 1

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldValue"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcoil/memory/RealStrongMemoryCache$cache$1;->this$0:Lcoil/memory/RealStrongMemoryCache;

    invoke-static {p1}, Lcoil/memory/RealStrongMemoryCache;->access$getReferenceCounter$p(Lcoil/memory/RealStrongMemoryCache;)Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object p1

    invoke-virtual {p3}, Lcoil/memory/RealStrongMemoryCache$InternalValue;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-interface {p1, p4}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lcoil/memory/RealStrongMemoryCache$cache$1;->this$0:Lcoil/memory/RealStrongMemoryCache;

    invoke-static {p1}, Lcoil/memory/RealStrongMemoryCache;->access$getWeakMemoryCache$p(Lcoil/memory/RealStrongMemoryCache;)Lcoil/memory/WeakMemoryCache;

    move-result-object p1

    invoke-virtual {p3}, Lcoil/memory/RealStrongMemoryCache$InternalValue;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p3}, Lcoil/memory/RealStrongMemoryCache$InternalValue;->isSampled()Z

    move-result v0

    invoke-virtual {p3}, Lcoil/memory/RealStrongMemoryCache$InternalValue;->getSize()I

    move-result p3

    invoke-interface {p1, p2, p4, v0, p3}, Lcoil/memory/WeakMemoryCache;->set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;ZI)V

    :cond_0
    return-void
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p2, Lcoil/memory/MemoryCache$Key;

    check-cast p3, Lcoil/memory/RealStrongMemoryCache$InternalValue;

    check-cast p4, Lcoil/memory/RealStrongMemoryCache$InternalValue;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcoil/memory/RealStrongMemoryCache$cache$1;->entryRemoved(ZLcoil/memory/MemoryCache$Key;Lcoil/memory/RealStrongMemoryCache$InternalValue;Lcoil/memory/RealStrongMemoryCache$InternalValue;)V

    return-void
.end method

.method protected sizeOf(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealStrongMemoryCache$InternalValue;)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Lcoil/memory/RealStrongMemoryCache$InternalValue;->getSize()I

    move-result p1

    return p1
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 105
    check-cast p1, Lcoil/memory/MemoryCache$Key;

    check-cast p2, Lcoil/memory/RealStrongMemoryCache$InternalValue;

    invoke-virtual {p0, p1, p2}, Lcoil/memory/RealStrongMemoryCache$cache$1;->sizeOf(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealStrongMemoryCache$InternalValue;)I

    move-result p1

    return p1
.end method
