.class public Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;
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
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;->txHash:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;->signed:Ljava/util/List;

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
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;->signed:Ljava/util/List;

    return-object v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;->txHash:Ljava/lang/String;

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
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;->signed:Ljava/util/List;

    return-void
.end method

.method public setTxHash(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;->txHash:Ljava/lang/String;

    return-void
.end method
