.class public final Lcoil/size/SizeResolver$Companion;
.super Ljava/lang/Object;
.source "SizeResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/size/SizeResolver;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcoil/size/SizeResolver$Companion;",
        "",
        "()V",
        "invoke",
        "Lcoil/size/SizeResolver;",
        "size",
        "Lcoil/size/Size;",
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
.field static final synthetic $$INSTANCE:Lcoil/size/SizeResolver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcoil/size/SizeResolver$Companion;

    invoke-direct {v0}, Lcoil/size/SizeResolver$Companion;-><init>()V

    sput-object v0, Lcoil/size/SizeResolver$Companion;->$$INSTANCE:Lcoil/size/SizeResolver$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcoil/size/Size;)Lcoil/size/SizeResolver;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcoil/size/RealSizeResolver;

    invoke-direct {v0, p1}, Lcoil/size/RealSizeResolver;-><init>(Lcoil/size/Size;)V

    check-cast v0, Lcoil/size/SizeResolver;

    return-object v0
.end method
