.class public abstract enum Lorg/bitcoinj/utils/BtcAutoFormat$Style;
.super Ljava/lang/Enum;
.source "BtcAutoFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/utils/BtcAutoFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/utils/BtcAutoFormat$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/utils/BtcAutoFormat$Style;

.field public static final enum CODE:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

.field public static final enum SYMBOL:Lorg/bitcoinj/utils/BtcAutoFormat$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 82
    new-instance v0, Lorg/bitcoinj/utils/BtcAutoFormat$Style$1;

    const/4 v1, 0x0

    const-string v2, "CODE"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/utils/BtcAutoFormat$Style$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/utils/BtcAutoFormat$Style;->CODE:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    .line 98
    new-instance v0, Lorg/bitcoinj/utils/BtcAutoFormat$Style$2;

    const/4 v2, 0x1

    const-string v3, "SYMBOL"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/utils/BtcAutoFormat$Style$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/utils/BtcAutoFormat$Style;->SYMBOL:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    .line 66
    sget-object v4, Lorg/bitcoinj/utils/BtcAutoFormat$Style;->CODE:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lorg/bitcoinj/utils/BtcAutoFormat$Style;->$VALUES:[Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/bitcoinj/utils/BtcAutoFormat$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/utils/BtcAutoFormat$Style;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/utils/BtcAutoFormat$Style;
    .locals 1

    .line 66
    const-class v0, Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/utils/BtcAutoFormat$Style;
    .locals 1

    .line 66
    sget-object v0, Lorg/bitcoinj/utils/BtcAutoFormat$Style;->$VALUES:[Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    invoke-virtual {v0}, [Lorg/bitcoinj/utils/BtcAutoFormat$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    return-object v0
.end method


# virtual methods
.method abstract apply(Ljava/text/DecimalFormat;)V
.end method
