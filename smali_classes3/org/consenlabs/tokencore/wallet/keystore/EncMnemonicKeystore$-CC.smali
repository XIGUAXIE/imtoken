.class public final synthetic Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore$-CC;
.super Ljava/lang/Object;
.source "EncMnemonicKeystore.java"


# direct methods
.method public static $default$createEncMnemonic(Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "_this"    # Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;

    .line 15
    invoke-interface {p0}, Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->deriveEncPair(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;->setEncMnemonic(Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)V

    return-void
.end method

.method public static $default$decryptMnemonic(Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "_this"    # Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;

    .line 19
    new-instance v0, Ljava/lang/String;

    invoke-interface {p0}, Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v1

    invoke-interface {p0}, Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;->getEncMnemonic()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->decryptEncPair(Ljava/lang/String;Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
