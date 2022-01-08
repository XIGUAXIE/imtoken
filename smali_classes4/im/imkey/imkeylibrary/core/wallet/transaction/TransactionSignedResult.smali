.class public Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;
.super Ljava/lang/Object;
.source "TransactionSignedResult.java"


# instance fields
.field private signedTx:Ljava/lang/String;

.field private txHash:Ljava/lang/String;

.field private wtxID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->signedTx:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->txHash:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->signedTx:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->txHash:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->wtxID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSignedTx()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->signedTx:Ljava/lang/String;

    return-object v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public getWtxID()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->wtxID:Ljava/lang/String;

    return-object v0
.end method

.method public setSignedTx(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->signedTx:Ljava/lang/String;

    return-void
.end method

.method public setTxHash(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->txHash:Ljava/lang/String;

    return-void
.end method

.method public setWtxID(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->wtxID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionSignedResult{signedTx=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->signedTx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\n\n txHash=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->txHash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\n\n wtxID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;->wtxID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
