.class public interface abstract Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;
.super Ljava/lang/Object;
.source "EncMnemonicKeystore.java"


# virtual methods
.method public abstract createEncMnemonic(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract decryptMnemonic(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;
.end method

.method public abstract getEncMnemonic()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
.end method

.method public abstract getMnemonicPath()Ljava/lang/String;
.end method

.method public abstract setEncMnemonic(Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)V
.end method
