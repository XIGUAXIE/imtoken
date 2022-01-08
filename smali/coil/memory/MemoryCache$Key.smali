.class public abstract Lcoil/memory/MemoryCache$Key;
.super Ljava/lang/Object;
.source "MemoryCache.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/memory/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/MemoryCache$Key$Simple;,
        Lcoil/memory/MemoryCache$Key$Complex;,
        Lcoil/memory/MemoryCache$Key$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00032\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0006\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcoil/memory/MemoryCache$Key;",
        "Landroid/os/Parcelable;",
        "()V",
        "Companion",
        "Complex",
        "Simple",
        "Lcoil/memory/MemoryCache$Key$Simple;",
        "Lcoil/memory/MemoryCache$Key$Complex;",
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
.field public static final Companion:Lcoil/memory/MemoryCache$Key$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/memory/MemoryCache$Key$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/MemoryCache$Key$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/memory/MemoryCache$Key;->Companion:Lcoil/memory/MemoryCache$Key$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcoil/memory/MemoryCache$Key;-><init>()V

    return-void
.end method

.method public static final create(Ljava/lang/String;)Lcoil/memory/MemoryCache$Key;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcoil/memory/MemoryCache$Key;->Companion:Lcoil/memory/MemoryCache$Key$Companion;

    invoke-virtual {v0, p0}, Lcoil/memory/MemoryCache$Key$Companion;->create(Ljava/lang/String;)Lcoil/memory/MemoryCache$Key;

    move-result-object p0

    return-object p0
.end method
