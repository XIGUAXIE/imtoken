.class public interface abstract Lorg/bitcoinj/signers/TransactionSigner;
.super Ljava/lang/Object;
.source "TransactionSigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/signers/TransactionSigner$MissingSignatureException;,
        Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;
    }
.end annotation


# virtual methods
.method public abstract deserialize([B)V
.end method

.method public abstract isReady()Z
.end method

.method public abstract serialize()[B
.end method

.method public abstract signInputs(Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;Lorg/bitcoinj/wallet/KeyBag;)Z
.end method
