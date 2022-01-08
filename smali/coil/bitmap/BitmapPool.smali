.class public interface abstract Lcoil/bitmap/BitmapPool;
.super Ljava/lang/Object;
.source "BitmapPool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/bitmap/BitmapPool$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008f\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012J\u0008\u0010\u0002\u001a\u00020\u0003H&J$\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH&J$\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH&J&\u0010\u000c\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH&J&\u0010\r\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0005H&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0007H&\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcoil/bitmap/BitmapPool;",
        "",
        "clear",
        "",
        "get",
        "Landroid/graphics/Bitmap;",
        "width",
        "",
        "height",
        "config",
        "Landroid/graphics/Bitmap$Config;",
        "getDirty",
        "getDirtyOrNull",
        "getOrNull",
        "put",
        "bitmap",
        "trimMemory",
        "level",
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
.field public static final Companion:Lcoil/bitmap/BitmapPool$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcoil/bitmap/BitmapPool$Companion;->$$INSTANCE:Lcoil/bitmap/BitmapPool$Companion;

    sput-object v0, Lcoil/bitmap/BitmapPool;->Companion:Lcoil/bitmap/BitmapPool$Companion;

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method public abstract getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method public abstract getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method public abstract getOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method public abstract put(Landroid/graphics/Bitmap;)V
.end method

.method public abstract trimMemory(I)V
.end method
