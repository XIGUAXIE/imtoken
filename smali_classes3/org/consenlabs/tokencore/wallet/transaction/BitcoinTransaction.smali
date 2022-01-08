.class public Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;
.super Ljava/lang/Object;
.source "BitcoinTransaction.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/transaction/TransactionSigner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;,
        Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;
    }
.end annotation


# static fields
.field static final DUST_THRESHOLD:J = 0xaaaL


# instance fields
.field private amount:J

.field changeAddress:Lorg/bitcoinj/core/Address;

.field private changeIdx:I

.field private extra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fee:J

.field locktime:J

.field private memo:Ljava/lang/String;

.field network:Lorg/bitcoinj/core/NetworkParameters;

.field private outputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;",
            ">;"
        }
    .end annotation
.end field

.field prvKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJJLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->locktime:J

    .line 63
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->to:Ljava/lang/String;

    .line 64
    iput-wide p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->amount:J

    .line 65
    iput-wide p5, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->fee:J

    .line 66
    iput-object p7, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->outputs:Ljava/util/List;

    .line 67
    iput p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->changeIdx:I

    const-wide/16 p1, 0xaaa

    cmp-long p5, p3, p1

    if-ltz p5, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "amount_less_than_minimum"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;IJJLjava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct/range {p0 .. p7}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;-><init>(Ljava/lang/String;IJJLjava/util/List;)V

    .line 76
    iput-object p8, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->extra:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method collectPrvKeysAndAddress(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)V
    .locals 3

    .line 557
    invoke-virtual {p3}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->isMainNet()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bitcoinj/params/TestNet3Params;->get()Lorg/bitcoinj/params/TestNet3Params;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    .line 558
    invoke-virtual {p3}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p3}, Lorg/consenlabs/tokencore/wallet/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->changeAddress:Lorg/bitcoinj/core/Address;

    .line 560
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p3, p2}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bitcoinj/core/DumpedPrivateKey;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/DumpedPrivateKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/DumpedPrivateKey;->getKey()Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPrivKey()Ljava/math/BigInteger;

    move-result-object p1

    .line 561
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->prvKeys:Ljava/util/List;

    goto/16 :goto_3

    .line 563
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->prvKeys:Ljava/util/List;

    .line 564
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p3, p2}, Lorg/consenlabs/tokencore/wallet/Wallet;->decryptMainKey(Ljava/lang/String;)[B

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 565
    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v0, p2}, Lorg/bitcoinj/crypto/DeterministicKey;->deserializeB58(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p2

    .line 566
    sget-object p3, Lorg/bitcoinj/crypto/ChildNumber;->ONE:Lorg/bitcoinj/crypto/ChildNumber;

    invoke-static {p2, p3}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p3

    .line 567
    new-instance v0, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getChangeIdx()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    invoke-static {p3, v0}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p3

    const-string v0, "P2WPKH"

    .line 568
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 569
    new-instance p1, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;

    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    invoke-virtual {p1, p3}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;->fromPrivateKey(Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->changeAddress:Lorg/bitcoinj/core/Address;

    goto :goto_1

    .line 571
    :cond_2
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p3, p1}, Lorg/bitcoinj/crypto/DeterministicKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->changeAddress:Lorg/bitcoinj/core/Address;

    .line 574
    :goto_1
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 575
    invoke-static {p3}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->access$200(Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 576
    :cond_3
    invoke-virtual {p3}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getDerivedPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x2f

    const/16 v1, 0x20

    .line 577
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 578
    aget-object v0, p3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 579
    aget-object p3, p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 581
    new-instance v1, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-direct {v1, v0, v2}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    invoke-static {p2, v1}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    .line 582
    new-instance v1, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-direct {v1, p3, v2}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    invoke-static {v0, v1}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p3

    .line 583
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->prvKeys:Ljava/util/List;

    invoke-virtual {p3}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivKey()Ljava/math/BigInteger;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method genOpReturnScript(Ljava/lang/String;)Lorg/bitcoinj/script/Script;
    .locals 0

    .line 589
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 590
    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createOpReturnScript([B)Lorg/bitcoinj/script/Script;

    move-result-object p1

    return-object p1
.end method

.method public getAmount()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->amount:J

    return-wide v0
.end method

.method public getChangeIdx()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->changeIdx:I

    return v0
.end method

.method public getFee()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->fee:J

    return-wide v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->outputs:Ljava/util/List;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->to:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(J)V
    .locals 0

    .line 104
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->amount:J

    return-void
.end method

.method public setChangeIdx(I)V
    .locals 0

    .line 136
    iput p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->changeIdx:I

    return-void
.end method

.method public setFee(J)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->fee:J

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->memo:Ljava/lang/String;

    return-void
.end method

.method public setOutputs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;",
            ">;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->outputs:Ljava/util/List;

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->to:Ljava/lang/String;

    return-void
.end method

.method public signSegWitTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "P2WPKH"

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 358
    invoke-virtual {v0, v1, v2, v3}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->collectPrvKeysAndAddress(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v6, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 364
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getAmount()J

    move-result-wide v1

    cmp-long v8, v6, v1

    if-ltz v8, :cond_12

    .line 371
    invoke-virtual/range {p0 .. p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getAmount()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getFee()J

    move-result-wide v8

    add-long/2addr v1, v8

    sub-long/2addr v6, v1

    .line 372
    iget-object v1, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v2, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->to:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Lorg/bitcoinj/core/Address;->isP2SHAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    invoke-virtual {v1}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v2

    goto :goto_1

    .line 377
    :cond_1
    invoke-static {v1}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v2

    .line 380
    :goto_1
    iget-object v8, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->changeAddress:Lorg/bitcoinj/core/Address;

    invoke-virtual {v8}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object v8

    invoke-static {v8}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v8

    .line 388
    :try_start_0
    new-instance v9, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 390
    new-instance v12, Lorg/bitcoinj/core/TransactionOutPoint;

    iget-object v13, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v11}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->access$000(Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;)I

    move-result v14

    int-to-long v14, v14

    invoke-static {v11}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->access$100(Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v11

    invoke-direct {v12, v13, v14, v15, v11}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Sha256Hash;)V

    .line 391
    invoke-virtual {v12, v9}, Lorg/bitcoinj/core/TransactionOutPoint;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 393
    :cond_2
    invoke-virtual {v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v9

    .line 396
    new-instance v10, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v10}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 398
    new-instance v11, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v12, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    iget-wide v13, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->amount:J

    invoke-static {v13, v14}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v11, v12, v14, v13, v1}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)V

    .line 399
    invoke-virtual {v11, v10}, Lorg/bitcoinj/core/TransactionOutput;->bitcoinSerialize(Ljava/io/OutputStream;)V

    const-wide/16 v11, 0xaaa

    cmp-long v15, v6, v11

    if-ltz v15, :cond_3

    .line 403
    new-instance v11, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v12, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v6, v7}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v15

    iget-object v4, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->changeAddress:Lorg/bitcoinj/core/Address;

    invoke-direct {v11, v12, v14, v15, v4}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)V

    .line 404
    invoke-virtual {v11, v10}, Lorg/bitcoinj/core/TransactionOutput;->bitcoinSerialize(Ljava/io/OutputStream;)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 407
    :goto_3
    iget-object v5, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->extra:Ljava/util/HashMap;

    if-eqz v5, :cond_5

    .line 408
    iget-object v5, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->extra:Ljava/util/HashMap;

    const-string v11, "opReturn"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 409
    invoke-static {v5}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->isValidHex(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 410
    invoke-static {v5}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 411
    invoke-static {v5}, Lorg/bitcoinj/script/ScriptBuilder;->createOpReturnScript([B)Lorg/bitcoinj/script/Script;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v5

    .line 412
    new-instance v11, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v12, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    sget-object v15, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-direct {v11, v12, v14, v15, v5}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    .line 413
    invoke-virtual {v11, v10}, Lorg/bitcoinj/core/TransactionOutput;->bitcoinSerialize(Ljava/io/OutputStream;)V

    move-object v14, v5

    goto :goto_4

    .line 409
    :cond_4
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v2, "invalid_opreturn"

    invoke-direct {v1, v2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_5
    :goto_4
    invoke-virtual {v10}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v5

    .line 427
    new-instance v10, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v10}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    move-object/from16 v16, v14

    .line 430
    invoke-virtual {v12}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v13

    invoke-static {v13, v14, v10}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    move-object/from16 v14, v16

    goto :goto_5

    :cond_6
    move-object/from16 v16, v14

    .line 432
    invoke-virtual {v10}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v10

    .line 435
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 436
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 437
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "WIF"

    move-object/from16 v18, v2

    if-ge v13, v14, :cond_8

    .line 438
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 439
    invoke-virtual/range {p3 .. p3}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->prvKeys:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    :cond_7
    iget-object v1, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_7
    check-cast v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    .line 440
    invoke-static {v1, v2}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v1

    const-string v15, "0014%s"

    new-array v3, v2, [Ljava/lang/Object;

    move-object v2, v15

    .line 441
    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    aput-object v17, v3, v19

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v2, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 446
    new-instance v3, Lorg/bitcoinj/core/TransactionOutPoint;

    iget-object v15, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    move-object/from16 v20, v8

    invoke-static {v14}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->access$000(Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;)I

    move-result v8

    move-wide/from16 v21, v6

    int-to-long v6, v8

    invoke-static {v14}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->access$100(Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v8

    invoke-direct {v3, v15, v6, v7, v8}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Sha256Hash;)V

    .line 447
    invoke-virtual {v3, v2}, Lorg/bitcoinj/core/TransactionOutPoint;->bitcoinSerialize(Ljava/io/OutputStream;)V

    .line 448
    invoke-virtual {v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "0x1976a914%s88ac"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 451
    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v6

    invoke-static {v6}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 454
    new-instance v6, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v6}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const-wide/16 v7, 0x2

    .line 455
    invoke-static {v7, v8, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 456
    invoke-virtual {v6, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 457
    invoke-virtual {v6, v10}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 458
    invoke-virtual {v6, v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 459
    invoke-virtual {v6, v3}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 460
    invoke-virtual {v14}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 461
    invoke-virtual {v14}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 462
    invoke-virtual {v6, v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 463
    iget-wide v2, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->locktime:J

    invoke-static {v2, v3, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    const-wide/16 v2, 0x1

    .line 465
    invoke-static {v2, v3, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 467
    invoke-virtual {v6}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 468
    invoke-static {v2}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v2

    .line 469
    invoke-static {v2}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->encodeToDER()[B

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v6, 0x0

    aput-byte v2, v3, v6

    invoke-static {v1, v3}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object v1

    .line 473
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p3

    move-object/from16 v2, v18

    move-object/from16 v8, v20

    move-wide/from16 v6, v21

    goto/16 :goto_6

    :cond_8
    move-wide/from16 v21, v6

    move-object/from16 v20, v8

    const/4 v1, 0x2

    new-array v3, v1, [Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    .line 478
    new-instance v5, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-instance v5, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const/4 v2, 0x1

    aput-object v5, v3, v2

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v1, :cond_11

    .line 482
    aget-object v6, v3, v5

    const-wide/16 v7, 0x2

    .line 483
    invoke-static {v7, v8, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    if-nez v5, :cond_9

    const/4 v7, 0x0

    .line 485
    invoke-virtual {v6, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    .line 486
    invoke-virtual {v6, v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    .line 489
    :cond_9
    new-instance v7, Lorg/bitcoinj/core/VarInt;

    invoke-virtual/range {p0 .. p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v7}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    const/4 v7, 0x0

    .line 490
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 491
    invoke-virtual/range {p0 .. p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 492
    invoke-static {v8}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->access$100(Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->reverseBytes([B)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 493
    invoke-virtual {v8}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getVout()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    const/16 v9, 0x17

    .line 496
    invoke-virtual {v6, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    const/16 v9, 0x16

    .line 498
    invoke-virtual {v6, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    .line 499
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 500
    invoke-virtual {v8}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v8

    invoke-static {v8, v9, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_a
    if-eqz v4, :cond_b

    const/16 v17, 0x2

    goto :goto_a

    :cond_b
    const/16 v17, 0x1

    :goto_a
    if-eqz v16, :cond_c

    add-int/lit8 v17, v17, 0x1

    :cond_c
    move/from16 v7, v17

    .line 510
    new-instance v8, Lorg/bitcoinj/core/VarInt;

    int-to-long v9, v7

    invoke-direct {v8, v9, v10}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v8}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 511
    iget-wide v7, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->amount:J

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 512
    new-instance v7, Lorg/bitcoinj/core/VarInt;

    move-object/from16 v8, v18

    array-length v9, v8

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v7}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 513
    invoke-virtual {v6, v8}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    if-eqz v4, :cond_d

    .line 515
    invoke-static/range {v21 .. v22}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 516
    new-instance v7, Lorg/bitcoinj/core/VarInt;

    move-object/from16 v9, v20

    array-length v10, v9

    int-to-long v13, v10

    invoke-direct {v7, v13, v14}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v7}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 517
    invoke-virtual {v6, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    goto :goto_b

    :cond_d
    move-object/from16 v9, v20

    :goto_b
    if-eqz v16, :cond_e

    const-wide/16 v13, 0x0

    .line 521
    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 522
    new-instance v7, Lorg/bitcoinj/core/VarInt;

    move-object/from16 v10, v16

    array-length v1, v10

    int-to-long v13, v1

    invoke-direct {v7, v13, v14}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v7}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 523
    invoke-virtual {v6, v10}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    goto :goto_c

    :cond_e
    move-object/from16 v10, v16

    :goto_c
    if-nez v5, :cond_10

    const/4 v1, 0x0

    .line 528
    :goto_d
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_10

    .line 529
    invoke-virtual/range {p3 .. p3}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v7

    invoke-virtual {v7}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->prvKeys:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    :goto_e
    check-cast v7, Ljava/math/BigInteger;

    goto :goto_f

    :cond_f
    iget-object v7, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_e

    .line 531
    :goto_f
    invoke-static {v7}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey;

    move-result-object v7

    .line 532
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 533
    new-instance v14, Lorg/bitcoinj/core/VarInt;

    move-object/from16 v18, v3

    const-wide/16 v2, 0x2

    invoke-direct {v14, v2, v3}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v14}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v14

    invoke-virtual {v6, v14}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 534
    new-instance v14, Lorg/bitcoinj/core/VarInt;

    array-length v2, v13

    int-to-long v2, v2

    invoke-direct {v14, v2, v3}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v14}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 535
    invoke-virtual {v6, v13}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 536
    new-instance v2, Lorg/bitcoinj/core/VarInt;

    invoke-virtual {v7}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v13, v3

    invoke-direct {v2, v13, v14}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 537
    invoke-virtual {v7}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v18

    goto :goto_d

    :cond_10
    move-object/from16 v18, v3

    .line 541
    iget-wide v1, v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->locktime:J

    invoke-static {v1, v2, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v20, v9

    move-object/from16 v16, v10

    move-object/from16 v3, v18

    const/4 v1, 0x2

    const/4 v2, 0x1

    move-object/from16 v18, v8

    goto/16 :goto_8

    :cond_11
    move-object/from16 v18, v3

    const/4 v1, 0x0

    .line 543
    aget-object v1, v18, v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 544
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-static {v1}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 547
    aget-object v3, v18, v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    .line 548
    invoke-static {v3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 549
    new-instance v4, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    invoke-direct {v4, v2, v3, v1}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    .line 551
    :catch_0
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v2, "OutputStream error"

    invoke-direct {v1, v2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_12
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v2, "insufficient_funds"

    invoke-direct {v1, v2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public signTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;
    .locals 7

    const-string p1, "NONE"

    .line 290
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->collectPrvKeysAndAddress(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)V

    .line 292
    new-instance p1, Lorg/bitcoinj/core/Transaction;

    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 295
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 296
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getAmount()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-ltz p2, :cond_b

    .line 304
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getAmount()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object p2

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 307
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getAmount()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getFee()J

    move-result-wide v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xaaa

    cmp-long p2, v0, v2

    if-ltz p2, :cond_1

    .line 309
    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object p2

    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->changeAddress:Lorg/bitcoinj/core/Address;

    invoke-virtual {p1, p2, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 313
    :cond_1
    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->extra:Ljava/util/HashMap;

    if-eqz p2, :cond_3

    const-string v0, "opReturn"

    .line 314
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 315
    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->isValidHex(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 317
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-static {p2}, Lorg/bitcoinj/script/ScriptBuilder;->createOpReturnScript([B)Lorg/bitcoinj/script/Script;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    goto :goto_1

    .line 315
    :cond_2
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "invalid_opreturn"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 321
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getVout()I

    move-result v2

    int-to-long v2, v2

    new-instance v4, Lorg/bitcoinj/script/Script;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getScriptPubKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bitcoinj/script/Script;-><init>([B)V

    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionInput;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 324
    :goto_3
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 325
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 327
    invoke-virtual {p3}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_4
    check-cast v2, Ljava/math/BigInteger;

    .line 329
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey;

    move-result-object v4

    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v4, v5}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 330
    invoke-static {v2}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    goto :goto_5

    .line 331
    :cond_6
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v4

    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v4, v5}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 332
    invoke-static {v2, p2}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    :goto_5
    int-to-long v3, v0

    .line 337
    invoke-virtual {p1, v3, v4}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v3

    .line 338
    iget-object v4, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object v1

    .line 339
    sget-object v4, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-virtual {p1, v0, v1, v4, p2}, Lorg/bitcoinj/core/Transaction;->hashForSignature(ILorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    .line 340
    invoke-virtual {v2, v4}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v4

    .line 341
    new-instance v5, Lorg/bitcoinj/crypto/TransactionSignature;

    sget-object v6, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-direct {v5, v4, v6, p2}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Lorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    .line 342
    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 343
    invoke-static {v5}, Lorg/bitcoinj/script/ScriptBuilder;->createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;)Lorg/bitcoinj/script/Script;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    goto :goto_6

    .line 345
    :cond_7
    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 348
    invoke-static {v5, v2}, Lorg/bitcoinj/script/ScriptBuilder;->createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 346
    :cond_8
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "not_support_send_target"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 334
    :cond_9
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "can_not_found_private_key"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_a
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->bitcoinSerialize()[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 354
    new-instance p3, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    invoke-direct {p3, p1, p2}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 300
    :cond_b
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "insufficient_funds"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitcoinTransaction{to=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", amount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->amount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", outputs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->outputs:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", memo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->memo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->fee:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", changeIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->changeIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
