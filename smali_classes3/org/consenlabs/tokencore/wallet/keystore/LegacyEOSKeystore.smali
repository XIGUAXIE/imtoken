.class public Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;
.super Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;
.source "LegacyEOSKeystore.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;-><init>()V

    .line 40
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    .line 44
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;->address:Ljava/lang/String;

    .line 45
    invoke-static {p3, p4}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->createPBKDF2Crypto(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    const-string p2, "V3"

    .line 46
    invoke-virtual {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setWalletType(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    const/4 p1, 0x3

    .line 48
    iput p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;->version:I

    .line 49
    invoke-static {p5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p5

    :cond_0
    iput-object p5, p0, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;->id:Ljava/lang/String;

    return-void

    .line 41
    :cond_1
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "Only init eos keystore in this constructor"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;
    .locals 7

    .line 23
    new-instance v6, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public exportPrivateKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/model/KeyPair;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;->decryptCiphertext(Ljava/lang/String;)[B

    move-result-object p1

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 29
    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->fromWIF(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;

    move-result-object p1

    .line 30
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/KeyPair;

    invoke-direct {v1}, Lorg/consenlabs/tokencore/wallet/model/KeyPair;-><init>()V

    .line 31
    invoke-virtual {v1, v0}, Lorg/consenlabs/tokencore/wallet/model/KeyPair;->setPrivateKey(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->getEosPublicKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/consenlabs/tokencore/wallet/model/KeyPair;->setPublicKey(Ljava/lang/String;)V

    .line 33
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
