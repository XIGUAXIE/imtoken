.class public Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;
.super Lim/imkey/imkeylibrary/core/wallet/Wallet;
.source "ImKeyEthereumTransaction.java"

# interfaces
.implements Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSigner;


# instance fields
.field private data:Ljava/lang/String;

.field private fee:Ljava/lang/String;

.field private gasLimit:Ljava/math/BigInteger;

.field private gasPrice:Ljava/math/BigInteger;

.field private nonce:Ljava/math/BigInteger;

.field private payment:Ljava/lang/String;

.field private receiver:Ljava/lang/String;

.field private sender:Ljava/lang/String;

.field private to:Ljava/lang/String;

.field private value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;-><init>()V

    .line 44
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->nonce:Ljava/math/BigInteger;

    .line 45
    iput-object p2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->gasPrice:Ljava/math/BigInteger;

    .line 46
    iput-object p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->gasLimit:Ljava/math/BigInteger;

    .line 47
    iput-object p4, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->to:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->value:Ljava/math/BigInteger;

    if-eqz p6, :cond_0

    .line 51
    invoke-static {p6}, Lim/imkey/imkeylibrary/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->data:Ljava/lang/String;

    .line 54
    :cond_0
    invoke-virtual {p7}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "payment"

    .line 57
    invoke-virtual {p7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->payment:Ljava/lang/String;

    const-string p1, "receiver"

    .line 58
    invoke-virtual {p7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->receiver:Ljava/lang/String;

    const-string p1, "sender"

    .line 59
    invoke-virtual {p7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->sender:Ljava/lang/String;

    const-string p1, "fee"

    .line 60
    invoke-virtual {p7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->fee:Ljava/lang/String;

    return-void

    .line 55
    :cond_1
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_sdk_illegal_argument"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createEip155SignatureData(Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;B)Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;
    .locals 2

    .line 145
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getV()I

    move-result v0

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x8

    .line 147
    new-instance p1, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getR()[B

    move-result-object v1

    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getS()[B

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;-><init>(I[B[B)V

    return-object p1
.end method


# virtual methods
.method asRlpValues(Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;",
            ")",
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/foundation/rlp/RlpType;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->getNonce()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;->create(Ljava/math/BigInteger;)Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;->create(Ljava/math/BigInteger;)Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;->create(Ljava/math/BigInteger;)Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 168
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;->create([B)Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 170
    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;->create(Ljava/lang/String;)Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_0
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;->create(Ljava/math/BigInteger;)Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 177
    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;->create([B)Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getV()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 180
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getV()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;->create(J)Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getR()[B

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->trimLeadingZeroes([B)[B

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;->create([B)Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getS()[B

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->trimLeadingZeroes([B)[B

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;->create([B)Lim/imkey/imkeylibrary/core/foundation/rlp/RlpString;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method calcTxHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 141
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->keccak256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->prependHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method encodeToRLP(Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;)[B
    .locals 1

    .line 151
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->asRlpValues(Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;)Ljava/util/List;

    move-result-object p1

    .line 152
    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpList;

    invoke-direct {v0, p1}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpList;-><init>(Ljava/util/List;)V

    .line 153
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpEncoder;->encode(Lim/imkey/imkeylibrary/core/foundation/rlp/RlpType;)[B

    move-result-object p1

    return-object p1
.end method

.method protected getAid()Ljava/lang/String;
    .locals 1

    const-string v0, "695F657468"

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getFee()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->fee:Ljava/lang/String;

    return-object v0
.end method

.method public getGasLimit()Ljava/math/BigInteger;
    .locals 1

    .line 73
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->gasLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGasPrice()Ljava/math/BigInteger;
    .locals 1

    .line 69
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 65
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPayment()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->payment:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->receiver:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 81
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public signTransaction(Ljava/lang/String;Ljava/lang/String;)Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;
    .locals 1

    .line 108
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->selectApplet()V

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->signTransaction(B[B)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->calcTxHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 114
    new-instance v0, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;

    invoke-direct {v0, p1, p2}, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method signTransaction(B[B)Ljava/lang/String;
    .locals 10

    .line 119
    new-instance v0, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    const/4 v1, 0x0

    new-array v2, v1, [B

    new-array v3, v1, [B

    invoke-direct {v0, p1, v2, v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;-><init>(I[B[B)V

    .line 120
    invoke-virtual {p0, v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->encodeToRLP(Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;)[B

    move-result-object v4

    .line 123
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->getPayment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v3, 0x1

    new-array v5, v3, [B

    const/4 v6, 0x7

    aput-byte v6, v5, v1

    new-array v6, v3, [B

    .line 124
    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    invoke-static {v6, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    invoke-static {v5, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v6

    .line 126
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->getReceiver()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-array v5, v3, [B

    const/16 v7, 0x8

    aput-byte v7, v5, v1

    new-array v7, v3, [B

    .line 127
    array-length v8, v0

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    invoke-static {v7, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    invoke-static {v5, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v7

    .line 129
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->getFee()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-array v5, v3, [B

    const/16 v8, 0x9

    aput-byte v8, v5, v1

    new-array v3, v3, [B

    .line 130
    array-length v8, v0

    int-to-byte v8, v8

    aput-byte v8, v3, v1

    invoke-static {v3, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    invoke-static {v5, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v8

    .line 132
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->getSender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    move-object v5, p2

    .line 133
    invoke-static/range {v4 .. v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/EthereumSign;->signMessage([B[B[B[B[B[B)Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    move-result-object p2

    .line 135
    invoke-static {p2, p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->createEip155SignatureData(Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;B)Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEthereumTransaction;->encodeToRLP(Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;)[B

    move-result-object p1

    .line 137
    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
