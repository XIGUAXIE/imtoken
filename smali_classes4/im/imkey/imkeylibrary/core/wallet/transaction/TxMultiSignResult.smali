.class public Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;
.super Ljava/lang/Object;
.source "TxMultiSignResult.java"


# instance fields
.field signed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field txHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;->txHash:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;->signed:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSigned()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;->signed:Ljava/util/List;

    return-object v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public setSigned(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;->signed:Ljava/util/List;

    return-void
.end method

.method public setTxHash(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;->txHash:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TxMultiSignResult{txHash=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;->txHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", signed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;->signed:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
