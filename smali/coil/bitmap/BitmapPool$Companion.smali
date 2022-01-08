.class public final Lcoil/bitmap/BitmapPool$Companion;
.super Ljava/lang/Object;
.source "BitmapPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/bitmap/BitmapPool;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcoil/bitmap/BitmapPool$Companion;",
        "",
        "()V",
        "invoke",
        "Lcoil/bitmap/BitmapPool;",
        "maxSize",
        "",
        "create",
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
.field static final synthetic $$INSTANCE:Lcoil/bitmap/BitmapPool$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcoil/bitmap/BitmapPool$Companion;

    invoke-direct {v0}, Lcoil/bitmap/BitmapPool$Companion;-><init>()V

    sput-object v0, Lcoil/bitmap/BitmapPool$Companion;->$$INSTANCE:Lcoil/bitmap/BitmapPool$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(I)Lcoil/bitmap/BitmapPool;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcoil/bitmap/EmptyBitmapPool;

    invoke-direct {p1}, Lcoil/bitmap/EmptyBitmapPool;-><init>()V

    check-cast p1, Lcoil/bitmap/BitmapPool;

    goto :goto_0

    :cond_0
    new-instance v7, Lcoil/bitmap/RealBitmapPool;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcoil/bitmap/RealBitmapPool;-><init>(ILjava/util/Set;Lcoil/bitmap/BitmapPoolStrategy;Lcoil/util/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v7

    check-cast p1, Lcoil/bitmap/BitmapPool;

    :goto_0
    return-object p1
.end method
