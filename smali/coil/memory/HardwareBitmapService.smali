.class public abstract Lcoil/memory/HardwareBitmapService;
.super Ljava/lang/Object;
.source "HardwareBitmapService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/HardwareBitmapService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u0082\u0001\u0002\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcoil/memory/HardwareBitmapService;",
        "",
        "()V",
        "allowHardware",
        "",
        "size",
        "Lcoil/size/Size;",
        "logger",
        "Lcoil/util/Logger;",
        "Companion",
        "Lcoil/memory/ImmutableHardwareBitmapService;",
        "Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;",
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
.field public static final Companion:Lcoil/memory/HardwareBitmapService$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/memory/HardwareBitmapService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/HardwareBitmapService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/memory/HardwareBitmapService;->Companion:Lcoil/memory/HardwareBitmapService$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcoil/memory/HardwareBitmapService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract allowHardware(Lcoil/size/Size;Lcoil/util/Logger;)Z
.end method
