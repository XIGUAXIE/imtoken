.class public Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;
.super Ljava/lang/Object;
.source "PubKey.java"


# instance fields
.field type:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tendermint/PubKeySecp256k1"

    .line 4
    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;->type:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;->value:Ljava/lang/String;

    return-void
.end method
