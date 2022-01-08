.class public final enum Lorg/bitcoinj/core/TransactionInput$ConnectionResult;
.super Ljava/lang/Enum;
.source "TransactionInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/TransactionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/TransactionInput$ConnectionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

.field public static final enum ALREADY_SPENT:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

.field public static final enum NO_SUCH_TX:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

.field public static final enum SUCCESS:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 272
    new-instance v0, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    const/4 v1, 0x0

    const-string v2, "NO_SUCH_TX"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    .line 273
    new-instance v0, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    const/4 v2, 0x1

    const-string v3, "ALREADY_SPENT"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->ALREADY_SPENT:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    .line 274
    new-instance v0, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    const/4 v3, 0x2

    const-string v4, "SUCCESS"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->SUCCESS:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    .line 271
    sget-object v5, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    aput-object v5, v4, v1

    sget-object v1, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->ALREADY_SPENT:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->$VALUES:[Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/TransactionInput$ConnectionResult;
    .locals 1

    .line 271
    const-class v0, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/TransactionInput$ConnectionResult;
    .locals 1

    .line 271
    sget-object v0, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->$VALUES:[Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    return-object v0
.end method
