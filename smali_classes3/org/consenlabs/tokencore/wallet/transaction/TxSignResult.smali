.class public Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;
.super Ljava/lang/Object;
.source "TxSignResult.java"


# instance fields
.field private signature:Ljava/lang/String;

.field private txHash:Ljava/lang/String;

.field private wtxID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->signature:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->txHash:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->signature:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->txHash:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->wtxID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public getWtxID()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->wtxID:Ljava/lang/String;

    return-object v0
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->signature:Ljava/lang/String;

    return-void
.end method

.method public setTxHash(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->txHash:Ljava/lang/String;

    return-void
.end method

.method public setWtxID(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->wtxID:Ljava/lang/String;

    return-void
.end method
