.class public Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;
.super Ljava/lang/Object;
.source "StdFee.java"


# instance fields
.field amount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/Coin;",
            ">;"
        }
    .end annotation
.end field

.field gas:J


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/Coin;",
            ">;J)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;->amount:Ljava/util/List;

    .line 14
    iput-wide p2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;->gas:J

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/Coin;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;->amount:Ljava/util/List;

    return-object v0
.end method

.method public getGas()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
    .end annotation

    .line 27
    iget-wide v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;->gas:J

    return-wide v0
.end method

.method public setAmount(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/Coin;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;->amount:Ljava/util/List;

    return-void
.end method

.method public setGas(J)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;->gas:J

    return-void
.end method
