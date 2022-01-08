.class public abstract Lorg/bitcoinj/signers/CustomTransactionSigner;
.super Lorg/bitcoinj/signers/StatelessTransactionSigner;
.source "CustomTransactionSigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/signers/CustomTransactionSigner$SignatureAndKey;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/bitcoinj/signers/CustomTransactionSigner;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/signers/CustomTransactionSigner;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/bitcoinj/signers/StatelessTransactionSigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getSignature(Lorg/bitcoinj/core/Sha256Hash;Ljava/util/List;)Lorg/bitcoinj/signers/CustomTransactionSigner$SignatureAndKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;)",
            "Lorg/bitcoinj/signers/CustomTransactionSigner$SignatureAndKey;"
        }
    .end annotation
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public signInputs(Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;Lorg/bitcoinj/wallet/KeyBag;)Z
    .locals 12

    .line 51
    iget-object v0, p1, Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;->partialTx:Lorg/bitcoinj/core/Transaction;

    .line 52
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    int-to-long v4, v3

    .line 54
    invoke-virtual {v0, v4, v5}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v6

    .line 55
    invoke-virtual {v6}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_1

    .line 59
    :cond_0
    invoke-virtual {v7}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v7

    .line 60
    invoke-virtual {v7}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v8

    if-nez v8, :cond_1

    .line 61
    sget-object p1, Lorg/bitcoinj/signers/CustomTransactionSigner;->log:Lorg/slf4j/Logger;

    const-string p2, "CustomTransactionSigner works only with P2SH transactions"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v2

    .line 65
    :cond_1
    invoke-virtual {v6}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v8

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bitcoinj/script/Script;

    .line 71
    :try_start_0
    invoke-virtual {v6}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v9

    invoke-virtual {v6}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v10

    invoke-virtual {v9, v0, v4, v5, v10}, Lorg/bitcoinj/script/Script;->correctlySpends(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;)V

    .line 72
    sget-object v4, Lorg/bitcoinj/signers/CustomTransactionSigner;->log:Lorg/slf4j/Logger;

    const-string v5, "Input {} already correctly spends output, assuming SIGHASH type used will be safe and skipping signing."

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v5, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 78
    invoke-virtual {v6, p2}, Lorg/bitcoinj/core/TransactionInput;->getConnectedRedeemData(Lorg/bitcoinj/wallet/KeyBag;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object v4

    if-nez v4, :cond_2

    .line 80
    sget-object v4, Lorg/bitcoinj/signers/CustomTransactionSigner;->log:Lorg/slf4j/Logger;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "No redeem data found for input {}"

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 84
    :cond_2
    iget-object v4, v4, Lorg/bitcoinj/wallet/RedeemData;->redeemScript:Lorg/bitcoinj/script/Script;

    sget-object v5, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-virtual {v0, v3, v4, v5, v2}, Lorg/bitcoinj/core/Transaction;->hashForSignature(ILorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    .line 85
    iget-object v5, p1, Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;->keyPaths:Ljava/util/Map;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {p0, v4, v5}, Lorg/bitcoinj/signers/CustomTransactionSigner;->getSignature(Lorg/bitcoinj/core/Sha256Hash;Ljava/util/List;)Lorg/bitcoinj/signers/CustomTransactionSigner$SignatureAndKey;

    move-result-object v5

    .line 86
    new-instance v9, Lorg/bitcoinj/crypto/TransactionSignature;

    iget-object v10, v5, Lorg/bitcoinj/signers/CustomTransactionSigner$SignatureAndKey;->sig:Lorg/bitcoinj/core/ECKey$ECDSASignature;

    sget-object v11, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-direct {v9, v10, v11, v2}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Lorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    .line 87
    iget-object v5, v5, Lorg/bitcoinj/signers/CustomTransactionSigner$SignatureAndKey;->pubKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {v8, v4, v5}, Lorg/bitcoinj/script/Script;->getSigInsertionIndex(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/ECKey;)I

    move-result v4

    .line 88
    invoke-virtual {v9}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v5

    invoke-virtual {v7, v8, v5, v4}, Lorg/bitcoinj/script/Script;->getScriptSigWithSignature(Lorg/bitcoinj/script/Script;[BI)Lorg/bitcoinj/script/Script;

    move-result-object v4

    .line 89
    invoke-virtual {v6, v4}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
