.class public final enum Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;
.super Ljava/lang/Enum;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MissingSigsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

.field public static final enum THROW:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

.field public static final enum USE_DUMMY_SIG:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

.field public static final enum USE_OP_ZERO:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 3693
    new-instance v0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    const/4 v1, 0x0

    const-string v2, "USE_OP_ZERO"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->USE_OP_ZERO:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    .line 3698
    new-instance v0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    const/4 v2, 0x1

    const-string v3, "USE_DUMMY_SIG"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->USE_DUMMY_SIG:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    .line 3703
    new-instance v0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    const/4 v3, 0x2

    const-string v4, "THROW"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->THROW:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    .line 3691
    sget-object v5, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->USE_OP_ZERO:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    aput-object v5, v4, v1

    sget-object v1, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->USE_DUMMY_SIG:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->$VALUES:[Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3691
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;
    .locals 1

    .line 3691
    const-class v0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;
    .locals 1

    .line 3691
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->$VALUES:[Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    return-object v0
.end method
