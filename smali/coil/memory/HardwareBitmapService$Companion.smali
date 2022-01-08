.class public final Lcoil/memory/HardwareBitmapService$Companion;
.super Ljava/lang/Object;
.source "HardwareBitmapService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/memory/HardwareBitmapService;
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
        "Lcoil/memory/HardwareBitmapService$Companion;",
        "",
        "()V",
        "invoke",
        "Lcoil/memory/HardwareBitmapService;",
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcoil/memory/HardwareBitmapService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Lcoil/memory/HardwareBitmapService;
    .locals 2

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    sget-boolean v0, Lcoil/memory/HardwareBitmapBlocklist;->IS_BLOCKED:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Lcoil/memory/ImmutableHardwareBitmapService;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcoil/memory/ImmutableHardwareBitmapService;-><init>(Z)V

    check-cast v0, Lcoil/memory/HardwareBitmapService;

    goto :goto_2

    .line 21
    :cond_2
    :goto_0
    sget-object v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->INSTANCE:Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;

    check-cast v0, Lcoil/memory/HardwareBitmapService;

    goto :goto_2

    .line 20
    :cond_3
    :goto_1
    new-instance v0, Lcoil/memory/ImmutableHardwareBitmapService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/ImmutableHardwareBitmapService;-><init>(Z)V

    check-cast v0, Lcoil/memory/HardwareBitmapService;

    :goto_2
    return-object v0
.end method
