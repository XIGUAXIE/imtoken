.class final Lcoil/memory/RealWeakMemoryCache$cleanUp$1;
.super Ljava/lang/Object;
.source "WeakMemoryCache.kt"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/memory/RealWeakMemoryCache;->cleanUp$coil_base_release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcoil/memory/RealWeakMemoryCache$WeakValue;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcoil/memory/RealWeakMemoryCache$WeakValue;",
        "test"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcoil/memory/RealWeakMemoryCache$cleanUp$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil/memory/RealWeakMemoryCache$cleanUp$1;

    invoke-direct {v0}, Lcoil/memory/RealWeakMemoryCache$cleanUp$1;-><init>()V

    sput-object v0, Lcoil/memory/RealWeakMemoryCache$cleanUp$1;->INSTANCE:Lcoil/memory/RealWeakMemoryCache$cleanUp$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcoil/memory/RealWeakMemoryCache$WeakValue;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 63
    check-cast p1, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    invoke-virtual {p0, p1}, Lcoil/memory/RealWeakMemoryCache$cleanUp$1;->test(Lcoil/memory/RealWeakMemoryCache$WeakValue;)Z

    move-result p1

    return p1
.end method
