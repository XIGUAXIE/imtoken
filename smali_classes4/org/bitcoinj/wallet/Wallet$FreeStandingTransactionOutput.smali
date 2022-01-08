.class Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;
.super Lorg/bitcoinj/core/TransactionOutput;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreeStandingTransactionOutput"
.end annotation


# instance fields
.field private chainHeight:I

.field private output:Lorg/bitcoinj/core/UTXO;

.field final synthetic this$0:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/UTXO;I)V
    .locals 2

    .line 4316
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;->this$0:Lorg/bitcoinj/wallet/Wallet;

    .line 4317
    invoke-virtual {p3}, Lorg/bitcoinj/core/UTXO;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object p1

    invoke-virtual {p3}, Lorg/bitcoinj/core/UTXO;->getScript()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    .line 4318
    iput-object p3, p0, Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;->output:Lorg/bitcoinj/core/UTXO;

    .line 4319
    iput p4, p0, Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;->chainHeight:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 2

    .line 4342
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;->output:Lorg/bitcoinj/core/UTXO;

    invoke-virtual {v0}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getParentTransactionDepthInBlocks()I
    .locals 2

    .line 4337
    iget v0, p0, Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;->chainHeight:I

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;->output:Lorg/bitcoinj/core/UTXO;

    invoke-virtual {v1}, Lorg/bitcoinj/core/UTXO;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getParentTransactionHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 4347
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;->output:Lorg/bitcoinj/core/UTXO;

    invoke-virtual {v0}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    return-object v0
.end method

.method public getUTXO()Lorg/bitcoinj/core/UTXO;
    .locals 1

    .line 4327
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;->output:Lorg/bitcoinj/core/UTXO;

    return-object v0
.end method
