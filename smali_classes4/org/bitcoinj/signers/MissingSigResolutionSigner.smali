.class public Lorg/bitcoinj/signers/MissingSigResolutionSigner;
.super Lorg/bitcoinj/signers/StatelessTransactionSigner;
.source "MissingSigResolutionSigner.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field public missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/bitcoinj/signers/MissingSigResolutionSigner;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/signers/MissingSigResolutionSigner;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/bitcoinj/signers/StatelessTransactionSigner;-><init>()V

    .line 39
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->USE_DUMMY_SIG:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    iput-object v0, p0, Lorg/bitcoinj/signers/MissingSigResolutionSigner;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/bitcoinj/signers/StatelessTransactionSigner;-><init>()V

    .line 39
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->USE_DUMMY_SIG:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    iput-object v0, p0, Lorg/bitcoinj/signers/MissingSigResolutionSigner;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    .line 45
    iput-object p1, p0, Lorg/bitcoinj/signers/MissingSigResolutionSigner;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public signInputs(Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;Lorg/bitcoinj/wallet/KeyBag;)Z
    .locals 11

    .line 55
    iget-object p2, p0, Lorg/bitcoinj/signers/MissingSigResolutionSigner;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    sget-object v0, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->USE_OP_ZERO:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    return v1

    .line 58
    :cond_0
    iget-object p2, p1, Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;->partialTx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 59
    invoke-static {}, Lorg/bitcoinj/crypto/TransactionSignature;->dummy()Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_8

    .line 61
    iget-object v4, p1, Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;->partialTx:Lorg/bitcoinj/core/Transaction;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v5

    if-nez v5, :cond_1

    .line 63
    sget-object v4, Lorg/bitcoinj/signers/MissingSigResolutionSigner;->log:Lorg/slf4j/Logger;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Missing connected output, assuming input {} is already signed."

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 67
    :cond_1
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v5

    .line 68
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v6

    .line 69
    invoke-virtual {v5}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5}, Lorg/bitcoinj/script/Script;->isSentToMultiSig()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v6}, Lorg/bitcoinj/script/Script;->getChunks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bitcoinj/script/ScriptChunk;

    invoke-virtual {v7, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 84
    iget-object v7, p0, Lorg/bitcoinj/signers/MissingSigResolutionSigner;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    sget-object v8, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->THROW:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    if-eq v7, v8, :cond_3

    .line 86
    iget-object v7, p0, Lorg/bitcoinj/signers/MissingSigResolutionSigner;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    sget-object v8, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->USE_DUMMY_SIG:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    if-ne v7, v8, :cond_7

    .line 87
    invoke-virtual {v5, v6, v0, v2}, Lorg/bitcoinj/script/Script;->getScriptSigWithSignature(Lorg/bitcoinj/script/Script;[BI)Lorg/bitcoinj/script/Script;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    goto :goto_4

    .line 85
    :cond_3
    new-instance p1, Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;

    invoke-direct {p1}, Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;-><init>()V

    throw p1

    .line 70
    :cond_4
    :goto_1
    invoke-virtual {v5}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v7

    const/4 v8, 0x1

    .line 72
    :goto_2
    invoke-virtual {v6}, Lorg/bitcoinj/script/Script;->getChunks()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    if-ge v8, v9, :cond_7

    .line 73
    invoke-virtual {v6}, Lorg/bitcoinj/script/Script;->getChunks()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bitcoinj/script/ScriptChunk;

    .line 74
    invoke-virtual {v9, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 75
    iget-object v9, p0, Lorg/bitcoinj/signers/MissingSigResolutionSigner;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    sget-object v10, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->THROW:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    if-eq v9, v10, :cond_5

    .line 77
    iget-object v9, p0, Lorg/bitcoinj/signers/MissingSigResolutionSigner;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    sget-object v10, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->USE_DUMMY_SIG:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v8, -0x1

    .line 78
    invoke-virtual {v5, v6, v0, v9}, Lorg/bitcoinj/script/Script;->getScriptSigWithSignature(Lorg/bitcoinj/script/Script;[BI)Lorg/bitcoinj/script/Script;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    goto :goto_3

    .line 76
    :cond_5
    new-instance p1, Lorg/bitcoinj/signers/TransactionSigner$MissingSignatureException;

    invoke-direct {p1}, Lorg/bitcoinj/signers/TransactionSigner$MissingSignatureException;-><init>()V

    throw p1

    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return v1
.end method
