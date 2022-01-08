.class public Lorg/consenlabs/tokencore/wallet/Wallet;
.super Ljava/lang/Object;
.source "Wallet.java"


# instance fields
.field private keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;


# direct methods
.method public constructor <init>(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    return-void
.end method


# virtual methods
.method public decryptMainKey(Ljava/lang/String;)[B
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->decryptCiphertext(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public decryptPrvKeyFor(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    instance-of v1, v0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    .line 115
    invoke-virtual {v0, p1, p2}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->decryptPrivateKeyFor(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "This method is only for EOS wallet!"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method delete(Ljava/lang/String;)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->verifyPassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->generateWalletFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method derivedKey(Ljava/lang/String;)[B
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getValidDerivedKey(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method exportKeystore(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    instance-of v1, v0, Lorg/consenlabs/tokencore/wallet/keystore/ExportableKeystore;

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->verifyPassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 77
    const-class v0, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    const-class v1, Lorg/consenlabs/tokencore/wallet/keystore/V3Ignore;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 78
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 80
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "keystore_invalid"

    invoke-direct {v0, v1, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 72
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "password_incorrect"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_1
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "not_support_export_keystore"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method exportMnemonic(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    instance-of v1, v0, Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;

    .line 62
    invoke-interface {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;->decryptMnemonic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-interface {v0}, Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;->getMnemonicPath()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;

    invoke-direct {v1, p1, v0}, Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public exportPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    instance-of v1, v0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    if-nez v1, :cond_1

    instance-of v0, v0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "illegal_operation"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->decryptCiphertext(Ljava/lang/String;)[B

    move-result-object p1

    .line 91
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 94
    :cond_2
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

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

    .line 135
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    instance-of v1, v0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->exportPrivateKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    instance-of v1, v0, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;

    if-eqz v1, :cond_1

    .line 138
    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;->exportPrivateKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 140
    :cond_1
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "Only eos wallet can export multi private keys"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEncXPub()Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    instance-of v1, v0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    if-eqz v1, :cond_0

    .line 50
    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->getEncryptXPub()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPathPrivates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    instance-of v1, v0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->getKeyPathPrivates()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    instance-of v0, v0, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;

    if-eqz v0, :cond_1

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 158
    :cond_1
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Only EOS wallet can export all public keys!"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    return-object v0
.end method

.method public getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    return-object v0
.end method

.method hasMnemonic()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    instance-of v0, v0, Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;

    return v0
.end method

.method public newReceiveAddress(I)Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    instance-of v1, v0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->newReceiveAddress(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 122
    :cond_0
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    instance-of v1, v0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    if-eqz v1, :cond_0

    .line 148
    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->setAccountName(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "Only EOS wallet can update account name!"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyDerivedKey([B)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->isValidDerivedKey([B)Z

    move-result p1

    return p1
.end method

.method verifyPassword(Ljava/lang/String;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Wallet;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->verifyPassword(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
