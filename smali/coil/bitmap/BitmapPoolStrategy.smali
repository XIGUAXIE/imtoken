.class public interface abstract Lcoil/bitmap/BitmapPoolStrategy;
.super Ljava/lang/Object;
.source "BitmapPoolStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/bitmap/BitmapPoolStrategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008`\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fJ&\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H&J\n\u0010\u000c\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0003H&J$\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcoil/bitmap/BitmapPoolStrategy;",
        "",
        "get",
        "Landroid/graphics/Bitmap;",
        "width",
        "",
        "height",
        "config",
        "Landroid/graphics/Bitmap$Config;",
        "put",
        "",
        "bitmap",
        "removeLast",
        "stringify",
        "",
        "Companion",
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
.field public static final Companion:Lcoil/bitmap/BitmapPoolStrategy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcoil/bitmap/BitmapPoolStrategy$Companion;->$$INSTANCE:Lcoil/bitmap/BitmapPoolStrategy$Companion;

    sput-object v0, Lcoil/bitmap/BitmapPoolStrategy;->Companion:Lcoil/bitmap/BitmapPoolStrategy$Companion;

    return-void
.end method


# virtual methods
.method public abstract get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method public abstract put(Landroid/graphics/Bitmap;)V
.end method

.method public abstract removeLast()Landroid/graphics/Bitmap;
.end method

.method public abstract stringify(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
.end method

.method public abstract stringify(Landroid/graphics/Bitmap;)Ljava/lang/String;
.end method
