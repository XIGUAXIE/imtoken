.class public final synthetic Lcoil/util/-Extensions$WhenMappings;
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

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcoil/decode/DataSource;->values()[Lcoil/decode/DataSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcoil/util/-Extensions$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcoil/decode/DataSource;->MEMORY_CACHE:Lcoil/decode/DataSource;

    invoke-virtual {v1}, Lcoil/decode/DataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcoil/util/-Extensions$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcoil/decode/DataSource;->MEMORY:Lcoil/decode/DataSource;

    invoke-virtual {v1}, Lcoil/decode/DataSource;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcoil/util/-Extensions$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    invoke-virtual {v1}, Lcoil/decode/DataSource;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lcoil/util/-Extensions$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcoil/decode/DataSource;->NETWORK:Lcoil/decode/DataSource;

    invoke-virtual {v1}, Lcoil/decode/DataSource;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcoil/util/-Extensions$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcoil/util/-Extensions$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcoil/util/-Extensions$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lcoil/util/-Extensions$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
