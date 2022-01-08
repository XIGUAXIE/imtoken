.class public final enum Lorg/bitcoinj/wallet/Wallet$BalanceType;
.super Ljava/lang/Enum;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BalanceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/Wallet$BalanceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Wallet$BalanceType;

.field public static final enum AVAILABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

.field public static final enum AVAILABLE_SPENDABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

.field public static final enum ESTIMATED:Lorg/bitcoinj/wallet/Wallet$BalanceType;

.field public static final enum ESTIMATED_SPENDABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 3454
    new-instance v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;

    const/4 v1, 0x0

    const-string v2, "ESTIMATED"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/wallet/Wallet$BalanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->ESTIMATED:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    .line 3462
    new-instance v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;

    const/4 v2, 0x1

    const-string v3, "AVAILABLE"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/wallet/Wallet$BalanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->AVAILABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    .line 3465
    new-instance v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;

    const/4 v3, 0x2

    const-string v4, "ESTIMATED_SPENDABLE"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/wallet/Wallet$BalanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->ESTIMATED_SPENDABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    .line 3467
    new-instance v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;

    const/4 v4, 0x3

    const-string v5, "AVAILABLE_SPENDABLE"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/wallet/Wallet$BalanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->AVAILABLE_SPENDABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/bitcoinj/wallet/Wallet$BalanceType;

    .line 3449
    sget-object v6, Lorg/bitcoinj/wallet/Wallet$BalanceType;->ESTIMATED:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    aput-object v6, v5, v1

    sget-object v1, Lorg/bitcoinj/wallet/Wallet$BalanceType;->AVAILABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    aput-object v1, v5, v2

    sget-object v1, Lorg/bitcoinj/wallet/Wallet$BalanceType;->ESTIMATED_SPENDABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lorg/bitcoinj/wallet/Wallet$BalanceType;->$VALUES:[Lorg/bitcoinj/wallet/Wallet$BalanceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3449
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Wallet$BalanceType;
    .locals 1

    .line 3449
    const-class v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Wallet$BalanceType;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Wallet$BalanceType;
    .locals 1

    .line 3449
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->$VALUES:[Lorg/bitcoinj/wallet/Wallet$BalanceType;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Wallet$BalanceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Wallet$BalanceType;

    return-object v0
.end method
