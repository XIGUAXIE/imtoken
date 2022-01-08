.class public Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;
.super Ljava/lang/Object;
.source "StdSignature.java"


# instance fields
.field accountNumber:J

.field pubKey:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;

.field sequence:J

.field signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;J)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->accountNumber:J

    .line 32
    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->signature:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->pubKey:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;

    .line 34
    iput-wide p5, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->sequence:J

    return-void
.end method


# virtual methods
.method public getAccountNumber()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
    .end annotation

    .line 14
    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->accountNumber:J

    return-wide v0
.end method

.method public getPubKey()Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->pubKey:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;

    return-object v0
.end method

.method public getSequence()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
    .end annotation

    .line 23
    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->sequence:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountNumber(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->accountNumber:J

    return-void
.end method

.method public setPubKey(Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->pubKey:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;

    return-void
.end method

.method public setSequence(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->sequence:J

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;->signature:Ljava/lang/String;

    return-void
.end method
