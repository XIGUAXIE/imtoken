.class public Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;
.super Ljava/lang/Object;
.source "Coin.java"


# instance fields
.field amount:J

.field denom:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;->denom:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;->amount:J

    return-void
.end method


# virtual methods
.method public getAmount()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
    .end annotation

    .line 18
    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;->amount:J

    return-wide v0
.end method

.method public getDenom()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;->denom:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;->amount:J

    return-void
.end method

.method public setDenom(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;->denom:Ljava/lang/String;

    return-void
.end method
