.class public final Lcoil/memory/StrongMemoryCache$Companion;
.super Ljava/lang/Object;
.source "StrongMemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/memory/StrongMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0086\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcoil/memory/StrongMemoryCache$Companion;",
        "",
        "()V",
        "invoke",
        "Lcoil/memory/StrongMemoryCache;",
        "weakMemoryCache",
        "Lcoil/memory/WeakMemoryCache;",
        "referenceCounter",
        "Lcoil/bitmap/BitmapReferenceCounter;",
        "maxSize",
        "",
        "logger",
        "Lcoil/util/Logger;",
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
.field static final synthetic $$INSTANCE:Lcoil/memory/StrongMemoryCache$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcoil/memory/StrongMemoryCache$Companion;

    invoke-direct {v0}, Lcoil/memory/StrongMemoryCache$Companion;-><init>()V

    sput-object v0, Lcoil/memory/StrongMemoryCache$Companion;->$$INSTANCE:Lcoil/memory/StrongMemoryCache$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;ILcoil/util/Logger;)Lcoil/memory/StrongMemoryCache;
    .locals 1

    const-string/jumbo v0, "weakMemoryCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "referenceCounter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p3, :cond_0

    .line 28
    new-instance v0, Lcoil/memory/RealStrongMemoryCache;

    invoke-direct {v0, p1, p2, p3, p4}, Lcoil/memory/RealStrongMemoryCache;-><init>(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;ILcoil/util/Logger;)V

    check-cast v0, Lcoil/memory/StrongMemoryCache;

    goto :goto_0

    .line 29
    :cond_0
    instance-of p2, p1, Lcoil/memory/RealWeakMemoryCache;

    if-eqz p2, :cond_1

    new-instance p2, Lcoil/memory/ForwardingStrongMemoryCache;

    invoke-direct {p2, p1}, Lcoil/memory/ForwardingStrongMemoryCache;-><init>(Lcoil/memory/WeakMemoryCache;)V

    move-object v0, p2

    check-cast v0, Lcoil/memory/StrongMemoryCache;

    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Lcoil/memory/EmptyStrongMemoryCache;->INSTANCE:Lcoil/memory/EmptyStrongMemoryCache;

    move-object v0, p1

    check-cast v0, Lcoil/memory/StrongMemoryCache;

    :goto_0
    return-object v0
.end method
