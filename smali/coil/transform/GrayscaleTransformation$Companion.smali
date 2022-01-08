.class final Lcoil/transform/GrayscaleTransformation$Companion;
.super Ljava/lang/Object;
.source "GrayscaleTransformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/transform/GrayscaleTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcoil/transform/GrayscaleTransformation$Companion;",
        "",
        "()V",
        "COLOR_FILTER",
        "Landroid/graphics/ColorMatrixColorFilter;",
        "getCOLOR_FILTER",
        "()Landroid/graphics/ColorMatrixColorFilter;",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcoil/transform/GrayscaleTransformation$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCOLOR_FILTER()Landroid/graphics/ColorMatrixColorFilter;
    .locals 1

    .line 40
    invoke-static {}, Lcoil/transform/GrayscaleTransformation;->access$getCOLOR_FILTER$cp()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method
