.class public Lorg/bitcoinj/signers/LocalTransactionSigner;
.super Lorg/bitcoinj/signers/StatelessTransactionSigner;
.source "LocalTransactionSigner.java"


# static fields
.field private static final MINIMUM_VERIFY_FLAGS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/bitcoinj/script/Script$VerifyFlag;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-class v0, Lorg/bitcoinj/signers/LocalTransactionSigner;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/signers/LocalTransactionSigner;->log:Lorg/slf4j/Logger;

    .line 52
    sget-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->P2SH:Lorg/bitcoinj/script/Script$VerifyFlag;

    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->NULLDUMMY:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/signers/LocalTransactionSigner;->MINIMUM_VERIFY_FLAGS:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/bitcoinj/signers/StatelessTransactionSigner;-><init>()V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public signInputs(Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;Lorg/bitcoinj/wallet/KeyBag;)Z
    .locals 13

    .line 62
    iget-object v6, p1, Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;->partialTx:Lorg/bitcoinj/core/Transaction;

    .line 63
    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_3

    int-to-long v2, v9

    .line 65
    invoke-virtual {v6, v2, v3}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v10

    .line 66
    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lorg/bitcoinj/signers/LocalTransactionSigner;->log:Lorg/slf4j/Logger;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Missing connected output, assuming input {} is already signed."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v4

    sget-object v5, Lorg/bitcoinj/signers/LocalTransactionSigner;->MINIMUM_VERIFY_FLAGS:Ljava/util/EnumSet;

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lorg/bitcoinj/script/Script;->correctlySpends(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;Ljava/util/Set;)V

    .line 76
    sget-object v0, Lorg/bitcoinj/signers/LocalTransactionSigner;->log:Lorg/slf4j/Logger;

    const-string v1, "Input {} already correctly spends output, assuming SIGHASH type used will be safe and skipping signing."

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 82
    invoke-virtual {v10, p2}, Lorg/bitcoinj/core/TransactionInput;->getConnectedRedeemData(Lorg/bitcoinj/wallet/KeyBag;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object v0

    .line 84
    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v11

    .line 89
    iget-object v1, v0, Lorg/bitcoinj/wallet/RedeemData;->keys:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/ECKey;

    .line 90
    instance-of v2, v1, Lorg/bitcoinj/crypto/DeterministicKey;

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p1, Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;->keyPaths:Ljava/util/Map;

    check-cast v1, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/RedeemData;->getFullKey()Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    if-nez v2, :cond_2

    .line 98
    sget-object v0, Lorg/bitcoinj/signers/LocalTransactionSigner;->log:Lorg/slf4j/Logger;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No local key found for input {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v12

    .line 105
    iget-object v0, v0, Lorg/bitcoinj/wallet/RedeemData;->redeemScript:Lorg/bitcoinj/script/Script;

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v3

    .line 107
    :try_start_1
    sget-object v4, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, v9

    invoke-virtual/range {v0 .. v5}, Lorg/bitcoinj/core/Transaction;->calculateSignature(ILorg/bitcoinj/core/ECKey;[BLorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v0

    invoke-virtual {v11, v12, v0, v8}, Lorg/bitcoinj/script/Script;->getScriptSigWithSignature(Lorg/bitcoinj/script/Script;[BI)Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 118
    invoke-virtual {v10, v0}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V
    :try_end_1
    .catch Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 122
    :catch_1
    sget-object v0, Lorg/bitcoinj/signers/LocalTransactionSigner;->log:Lorg/slf4j/Logger;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No private key in keypair for input {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 120
    throw p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
