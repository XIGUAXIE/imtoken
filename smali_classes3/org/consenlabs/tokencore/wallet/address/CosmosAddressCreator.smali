.class public Lorg/consenlabs/tokencore/wallet/address/CosmosAddressCreator;
.super Ljava/lang/Object;
.source "CosmosAddressCreator.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/address/AddressCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertBits([BIIIIZ)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x1

    shl-int v2, v1, p4

    sub-int/2addr v2, v1

    add-int v3, p3, p4

    sub-int/2addr v3, v1

    shl-int v3, v1, v3

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, p2, :cond_2

    add-int v8, v5, p1

    .line 38
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    ushr-int v9, v8, p3

    if-nez v9, :cond_1

    shl-int/2addr v7, p3

    or-int/2addr v7, v8

    and-int/2addr v7, v3

    add-int/2addr v6, p3

    :goto_1
    if-lt v6, p4, :cond_0

    sub-int/2addr v6, p4

    ushr-int v8, v7, v6

    and-int/2addr v8, v2

    .line 47
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Lorg/bitcoinj/core/AddressFormatException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 41
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Input value \'%X\' exceeds \'%d\' bit size"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p5, :cond_3

    if-lez v6, :cond_4

    sub-int/2addr p4, v6

    shl-int p0, v7, p4

    and-int/2addr p0, v2

    .line 52
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_3
    if-ge v6, p3, :cond_5

    sub-int/2addr p4, v6

    shl-int p0, v7, p4

    and-int/2addr p0, v2

    if-nez p0, :cond_5

    .line 56
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 54
    :cond_5
    new-instance p0, Lorg/bitcoinj/core/AddressFormatException;

    const-string p1, "Could not convert bits, invalid padding"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPublicKeyAsHex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/address/CosmosAddressCreator;->fromPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fromPrivateKey([B)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p1}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPublicKeyAsHex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/address/CosmosAddressCreator;->fromPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fromPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 24
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v0

    .line 26
    array-length v2, v0

    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lorg/consenlabs/tokencore/wallet/address/CosmosAddressCreator;->convertBits([BIIIIZ)[B

    move-result-object p1

    const-string v0, "cosmos"

    invoke-static {v0, p1}, Lorg/consenlabs/tokencore/foundation/utils/Bech32;->encode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
