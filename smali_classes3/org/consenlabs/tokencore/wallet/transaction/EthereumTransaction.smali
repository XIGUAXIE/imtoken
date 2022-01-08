.class public Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;
.super Ljava/lang/Object;
.source "EthereumTransaction.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/transaction/TransactionSigner;


# instance fields
.field private data:Ljava/lang/String;

.field private gasLimit:Ljava/math/BigInteger;

.field private gasPrice:Ljava/math/BigInteger;

.field private nonce:Ljava/math/BigInteger;

.field private to:Ljava/lang/String;

.field private value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->nonce:Ljava/math/BigInteger;

    .line 35
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->gasPrice:Ljava/math/BigInteger;

    .line 36
    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->gasLimit:Ljava/math/BigInteger;

    .line 37
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->to:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->value:Ljava/math/BigInteger;

    if-eqz p6, :cond_0

    .line 41
    invoke-static {p6}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->data:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static createEip155SignatureData(Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;I)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;
    .locals 2

    .line 92
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getV()I

    move-result v0

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x8

    .line 94
    new-instance p1, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getR()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getS()[B

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;-><init>(I[B[B)V

    return-object p1
.end method


# virtual methods
.method asRlpValues(Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/foundation/rlp/RlpType;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->getNonce()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->create(Ljava/math/BigInteger;)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->create(Ljava/math/BigInteger;)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->create(Ljava/math/BigInteger;)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 115
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->create([B)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 117
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->create(Ljava/lang/String;)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->create(Ljava/math/BigInteger;)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 124
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->create([B)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getV()I

    move-result v1

    if-lez v1, :cond_1

    .line 127
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getV()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->create(J)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getR()[B

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->trimLeadingZeroes([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->create([B)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getS()[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->trimLeadingZeroes([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->create([B)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method calcTxHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->keccak256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->prependHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method encodeToRLP(Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;)[B
    .locals 1

    .line 98
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->asRlpValues(Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;)Ljava/util/List;

    move-result-object p1

    .line 99
    new-instance v0, Lorg/consenlabs/tokencore/foundation/rlp/RlpList;

    invoke-direct {v0, p1}, Lorg/consenlabs/tokencore/foundation/rlp/RlpList;-><init>(Ljava/util/List;)V

    .line 100
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/rlp/RlpEncoder;->encode(Lorg/consenlabs/tokencore/foundation/rlp/RlpType;)[B

    move-result-object p1

    return-object p1
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getGasLimit()Ljava/math/BigInteger;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->gasLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGasPrice()Ljava/math/BigInteger;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method signTransaction(I[B)Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    const/4 v1, 0x0

    new-array v2, v1, [B

    new-array v1, v1, [B

    invoke-direct {v0, p1, v2, v1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;-><init>(I[B[B)V

    .line 79
    invoke-virtual {p0, v0}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->encodeToRLP(Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;)[B

    move-result-object v0

    .line 80
    invoke-static {v0, p2}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->signMessage([B[B)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    move-result-object p2

    .line 82
    invoke-static {p2, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->createEip155SignatureData(Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;I)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->encodeToRLP(Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;)[B

    move-result-object p1

    .line 84
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public signTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;
    .locals 0

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2}, Lorg/consenlabs/tokencore/wallet/Wallet;->decryptMainKey(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->signTransaction(I[B)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->calcTxHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    new-instance p3, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    invoke-direct {p3, p1, p2}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method
