.class enum Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;
.super Ljava/lang/Enum;
.source "BtcFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/utils/BtcFormat$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "Variant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

.field public static final enum AUTO:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

.field public static final enum FIXED:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

.field public static final enum UNSET:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 545
    new-instance v0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant$1;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->AUTO:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    .line 548
    new-instance v0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    const/4 v2, 0x1

    const-string v3, "FIXED"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->FIXED:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    .line 549
    new-instance v0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    const/4 v3, 0x2

    const-string v4, "UNSET"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->UNSET:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    .line 544
    sget-object v5, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->AUTO:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    aput-object v5, v4, v1

    sget-object v1, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->FIXED:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->$VALUES:[Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 544
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/bitcoinj/utils/BtcFormat$1;)V
    .locals 0

    .line 544
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;
    .locals 1

    .line 544
    const-class v0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;
    .locals 1

    .line 544
    sget-object v0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->$VALUES:[Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    invoke-virtual {v0}, [Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    return-object v0
.end method


# virtual methods
.method newInstance(Lorg/bitcoinj/utils/BtcFormat$Builder;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 3

    .line 551
    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat$Builder;->access$400(Lorg/bitcoinj/utils/BtcFormat$Builder;)I

    move-result v0

    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat$Builder;->access$200(Lorg/bitcoinj/utils/BtcFormat$Builder;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat$Builder;->access$300(Lorg/bitcoinj/utils/BtcFormat$Builder;)I

    move-result v2

    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat$Builder;->access$500(Lorg/bitcoinj/utils/BtcFormat$Builder;)[I

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;I[I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p1

    return-object p1
.end method
