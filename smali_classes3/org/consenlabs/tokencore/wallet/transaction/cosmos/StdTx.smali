.class public Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;
.super Ljava/lang/Object;
.source "StdTx.java"


# instance fields
.field fee:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;

.field memo:Ljava/lang/String;

.field msgs:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "msg"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->msgs:Ljava/util/List;

    .line 17
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->fee:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;

    .line 18
    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->signatures:Ljava/util/List;

    .line 19
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->memo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFee()Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->fee:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->msgs:Ljava/util/List;

    return-object v0
.end method

.method public getSignatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->signatures:Ljava/util/List;

    return-object v0
.end method

.method public setFee(Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->fee:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->memo:Ljava/lang/String;

    return-void
.end method

.method public setMsgs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->msgs:Ljava/util/List;

    return-void
.end method

.method public setSignatures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;->signatures:Ljava/util/List;

    return-void
.end method
