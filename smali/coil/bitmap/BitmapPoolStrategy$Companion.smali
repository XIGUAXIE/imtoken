.class public final Lcoil/bitmap/BitmapPoolStrategy$Companion;
.super Ljava/lang/Object;
.source "BitmapPoolStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/bitmap/BitmapPoolStrategy;
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004H\u0086\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcoil/bitmap/BitmapPoolStrategy$Companion;",
        "",
        "()V",
        "invoke",
        "Lcoil/bitmap/BitmapPoolStrategy;",
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
.field static final synthetic $$INSTANCE:Lcoil/bitmap/BitmapPoolStrategy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcoil/bitmap/BitmapPoolStrategy$Companion;

    invoke-direct {v0}, Lcoil/bitmap/BitmapPoolStrategy$Companion;-><init>()V

    sput-object v0, Lcoil/bitmap/BitmapPoolStrategy$Companion;->$$INSTANCE:Lcoil/bitmap/BitmapPoolStrategy$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Lcoil/bitmap/BitmapPoolStrategy;
    .locals 2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Lcoil/bitmap/SizeStrategy;

    invoke-direct {v0}, Lcoil/bitmap/SizeStrategy;-><init>()V

    check-cast v0, Lcoil/bitmap/BitmapPoolStrategy;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil/bitmap/AttributeStrategy;

    invoke-direct {v0}, Lcoil/bitmap/AttributeStrategy;-><init>()V

    check-cast v0, Lcoil/bitmap/BitmapPoolStrategy;

    :goto_0
    return-object v0
.end method
