.class public Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;
.super Ljava/lang/Object;
.source "EthereumSign.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dataToBytes(Ljava/lang/String;)[B
    .locals 1

    .line 77
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->isValidHex(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "UTF-8"

    .line 80
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static ecRecover([BLjava/lang/String;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/subgraph/orchid/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x80

    .line 49
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 50
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x10

    invoke-static {p1, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 51
    new-instance v3, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    int-to-byte p1, p1

    invoke-direct {v3, p1, v2, v0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;-><init>(I[B[B)V

    .line 52
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object p0

    invoke-static {p0, v3, v1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureUtil;->signedMessageToKey([BLorg/consenlabs/tokencore/wallet/transaction/SignatureData;Z)[B

    move-result-object p0

    .line 53
    array-length p1, p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToBigInteger([B)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static personalSign(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4

    .line 28
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->dataToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 29
    array-length v0, p0

    .line 30
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "\u0019Ethereum Signed Message:\n%d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 31
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 32
    invoke-static {v0, p0}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 33
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->signMessage([B[B)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    move-result-object p0

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static recoverAddress([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    :try_start_0
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->ecRecover([BLjava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    .line 69
    new-instance p1, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;

    invoke-direct {p1}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;-><init>()V

    invoke-virtual {p1, p0}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;->fromPublicKey(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static recoverAddressFromHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 63
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->recoverAddress([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static recoverAddressFromStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 57
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 58
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->recoverAddress([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static signHex(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 38
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->signMessage([B[B)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    move-result-object p0

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static signMessage([B[B)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;
    .locals 2

    .line 86
    invoke-static {p1}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 87
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object p0

    .line 88
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    invoke-static {v0, p0, p1, v1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureUtil;->signAsRecoverable(Lorg/bitcoinj/core/ECKey$ECDSASignature;[BLorg/bitcoinj/core/ECKey;Z)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    move-result-object p0

    return-object p0
.end method

.method public static signStr(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 42
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 43
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->signMessage([B[B)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    move-result-object p0

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
