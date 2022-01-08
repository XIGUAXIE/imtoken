.class public final synthetic Lcoil/util/-Requests$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcoil/size/Precision;->values()[Lcoil/size/Precision;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcoil/util/-Requests$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcoil/size/Precision;->EXACT:Lcoil/size/Precision;

    invoke-virtual {v1}, Lcoil/size/Precision;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcoil/util/-Requests$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcoil/size/Precision;->INEXACT:Lcoil/size/Precision;

    invoke-virtual {v1}, Lcoil/size/Precision;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcoil/util/-Requests$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcoil/size/Precision;->AUTOMATIC:Lcoil/size/Precision;

    invoke-virtual {v1}, Lcoil/size/Precision;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
