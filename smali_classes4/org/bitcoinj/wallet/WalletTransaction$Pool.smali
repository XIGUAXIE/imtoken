.class public final enum Lorg/bitcoinj/wallet/WalletTransaction$Pool;
.super Ljava/lang/Enum;
.source "WalletTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/WalletTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/WalletTransaction$Pool;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/WalletTransaction$Pool;

.field public static final enum DEAD:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

.field public static final enum PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

.field public static final enum SPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

.field public static final enum UNSPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 28
    new-instance v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    const/4 v1, 0x0

    const-string v2, "UNSPENT"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    .line 29
    new-instance v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    const/4 v2, 0x1

    const-string v3, "SPENT"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->SPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    .line 30
    new-instance v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    const/4 v3, 0x2

    const-string v4, "DEAD"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->DEAD:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    .line 31
    new-instance v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    const/4 v4, 0x3

    const-string v5, "PENDING"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    .line 27
    sget-object v6, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    aput-object v6, v5, v1

    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->SPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    aput-object v1, v5, v2

    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->DEAD:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->$VALUES:[Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/WalletTransaction$Pool;
    .locals 1

    .line 27
    const-class v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/WalletTransaction$Pool;
    .locals 1

    .line 27
    sget-object v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->$VALUES:[Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/WalletTransaction$Pool;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    return-object v0
.end method
