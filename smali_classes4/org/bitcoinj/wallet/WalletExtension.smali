.class public interface abstract Lorg/bitcoinj/wallet/WalletExtension;
.super Ljava/lang/Object;
.source "WalletExtension.java"


# virtual methods
.method public abstract deserializeWalletExtension(Lorg/bitcoinj/wallet/Wallet;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getWalletExtensionID()Ljava/lang/String;
.end method

.method public abstract isWalletExtensionMandatory()Z
.end method

.method public abstract serializeWalletExtension()[B
.end method
