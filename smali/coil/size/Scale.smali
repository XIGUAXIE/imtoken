.class public final enum Lcoil/size/Scale;
.super Ljava/lang/Enum;
.source "Scale.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcoil/size/Scale;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcoil/size/Scale;",
        "",
        "(Ljava/lang/String;I)V",
        "FILL",
        "FIT",
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
.field private static final synthetic $VALUES:[Lcoil/size/Scale;

.field public static final enum FILL:Lcoil/size/Scale;

.field public static final enum FIT:Lcoil/size/Scale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcoil/size/Scale;

    new-instance v1, Lcoil/size/Scale;

    const/4 v2, 0x0

    const-string v3, "FILL"

    invoke-direct {v1, v3, v2}, Lcoil/size/Scale;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcoil/size/Scale;->FILL:Lcoil/size/Scale;

    aput-object v1, v0, v2

    new-instance v1, Lcoil/size/Scale;

    const/4 v2, 0x1

    const-string v3, "FIT"

    invoke-direct {v1, v3, v2}, Lcoil/size/Scale;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcoil/size/Scale;->FIT:Lcoil/size/Scale;

    aput-object v1, v0, v2

    sput-object v0, Lcoil/size/Scale;->$VALUES:[Lcoil/size/Scale;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcoil/size/Scale;
    .locals 1

    const-class v0, Lcoil/size/Scale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcoil/size/Scale;

    return-object p0
.end method

.method public static values()[Lcoil/size/Scale;
    .locals 1

    sget-object v0, Lcoil/size/Scale;->$VALUES:[Lcoil/size/Scale;

    invoke-virtual {v0}, [Lcoil/size/Scale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcoil/size/Scale;

    return-object v0
.end method
