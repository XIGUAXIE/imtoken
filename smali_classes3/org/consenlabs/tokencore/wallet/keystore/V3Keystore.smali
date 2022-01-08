.class public Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;
.super Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;
.source "V3Keystore.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/keystore/ExportableKeystore;


# static fields
.field public static final VERSION:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;-><init>()V

    .line 37
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BITCOIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->isMainNet()Ljava/lang/Boolean;

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

    .line 39
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 40
    new-instance v2, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;

    invoke-direct {v2, p3, v0}, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;-><init>(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;)V

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->validate()Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSegWit()Ljava/lang/String;

    move-result-object v2

    const-string v3, "P2WPKH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    new-instance v2, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;

    invoke-direct {v2, v0}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    invoke-virtual {v2, p3}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;->fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->address:Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_1
    new-instance v2, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;

    invoke-direct {v2, v0}, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    invoke-virtual {v2, p3}, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;->fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->address:Ljava/lang/String;

    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ETHEREUM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    invoke-static {p3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 48
    new-instance v0, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;

    invoke-direct {v0, p3}, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;->validate()Ljava/lang/String;

    .line 49
    new-instance p3, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;

    invoke-direct {p3}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;-><init>()V

    invoke-virtual {p3, v1}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;->fromPrivateKey([B)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->address:Ljava/lang/String;

    .line 53
    :goto_1
    invoke-static {p2, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->createPBKDF2Crypto(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    const-string p2, "V3"

    .line 54
    invoke-virtual {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setWalletType(Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    const/4 p1, 0x3

    .line 56
    iput p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->version:I

    .line 57
    invoke-static {p4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_3
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->id:Ljava/lang/String;

    return-void

    .line 51
    :cond_4
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "Can\'t init eos keystore in this constructor"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;
    .locals 2

    .line 32
    new-instance v0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    const-string v1, ""

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/Keystore;
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->decrypt(Ljava/lang/String;)[B

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->id:Ljava/lang/String;

    invoke-direct {p1, v1, p2, v0, v2}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
